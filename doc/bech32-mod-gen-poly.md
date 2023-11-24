# bech32_mod generator polynomial generation

## Summary
In principle, we followed the method used by Monero's Jamis polynomial search which is explained in detail in [this document](https://gist.github.com/tevador/5b3fbbd0877a3412ede07263c6b2663d) to generate the best-performing generator polynomial for our need.

Since our requirements differ from those of Jamis, we used different approach to select the best performing polynomial.

Here are the conditions we needed to satisfy:

1. The generator polynomial should be capable of detecting up to 5 errors in 165-character bech32 string.
   - We wanted a 96-byte double public key to be encoded to bech32 format. Converting 8-bit based vector to 5-bit vector, the vector length for the double public key becomes 96 * 8 / 5 = 153.6 which is 154 bytes. In addition to that, 8-byte checksum, 2-byte HRP and 1-byte separator are needed. Adding those togethger, the resulting bech32 string becomes 165-character long.
2. Also we want the polynomial to have the lowest false-positive error rate for 7 and 8 error cases up to 50 characters.

We generated 10-million randomly generated degree-8 generator polynomials, and computed their false positive error rates for the cases of various numbers of errors in the same way Jamis did.

Amongst them, there were two generator polynomials satisfying the first condition, namely:

```
U1PIRGA7
AJ4RJKVB
```

Then we concluded that `U1PIRGA7` performed better for the second condition, and we chose `U1PIRGA7`.

## Actual Steps

### 1. Generating random 10-million degree-8 polynomials
We used [gen_crc.py](https://gist.github.com/tevador/5b3fbbd0877a3412ede07263c6b2663d#:~:text=2.1-,gen_crc.py,-The%20gen_crc.py) used for Jamis search shown below:

```python
import random

CHARSET = "0123456789ABCDEFGHIJKLMNOPQRSTUV"

def gen_to_str(val, degree):
    gen_str = ""
    for i in range(degree):
        gen_str = CHARSET[int(val) % 32] + gen_str
        val /= 32
    return gen_str

def gen_crc(degree, count, seed=None):
    random.seed(seed)
    for i in range(count):
        while True:
            r = random.getrandbits(5 * degree)
            if (r % 32) != 0:
                break
        print(gen_to_str(r, degree))

gen_crc(8, 10000000, 0x584d52)
```

### 2. Calculating false-positive error rates for each polynomial
To calculate the set of candidate polynomials, we used [crccollide.cpp](https://github.com/sipa/ezbase32/blob/master/crccollide.cpp) developed by Bitcoin developers compiled with the default parameters as in:

```bash
$ g++ ezbase32/crccollide.cpp -o crccollide -lpthread -O3
```

Then we set the number of errors to 5 and the threshold to 120 characters

```bash
$ mkdir results1
$ parallel -a list.txt ./crccollide {} 5 120 ">" results1/{}.txt
```

So far, we have taken the same steps as those done in the Monero's Jamis search, and this generated the output files in `results1` directotory. The calculation took approx 25 days on Core i5-13500 using 20 threads.

```bash
39762158.30s user 2845631.54s system 1975% cpu 599:14:56.86 total
```

After removing polynomial below the threshould with

```bash
$ find results1 -name "*.txt" -type f -size -2k -delete
```

Following the Jamis's search steps, `16976` polynomials are left in the `results1` directory.

```bash
$ ls -1 results1 | wc -l
16976
```

Each file in `results1` directory looks this:

```bash
...
A00C78KL  123   0.000000000000000   0.000000000000000   0.000000000000000   0.000000000000000   0.000000000000000   1.031711484752184  # 100% done
A00C78KL  124   0.000000000000000   0.000000000000000   0.000000000000000   0.000000000000000   0.010575746914933   1.030752602001270  # 100% done
...
```

where each column contains the following string/number:
1. Polynomial encoded in bech32 hex
1. Number of characters in the input
1. False positive error detection rate when the input contains 1 error
1. False positive error detection rate when the input contains 2 errors
1. False positive error detection rate when the input contains 3 errors
1. False positive error detection rate when the input contains 4 errors
1. False positive error detection rate when the input contains 5 errors
1. False positive error detection rate when the input contains 6 errors

## 3. Selecting polynomial that can always correctly detect up to 5 errors in 165-byte input string

To extract polynomials satisfying our requirements, we used `err6-high-perf.py` shown below:

```python
#!/usr/bin/python3

import os
from typing import Optional, Tuple

def get_rate(filename, num_char) -> Optional[Tuple[str, float]]:
    gen = ''
    with open(filename) as file:
        for line in file:
            tokens = line.split()
            if len(tokens) == 2 and tokens[1] == "starting":
                gen = tokens[0].rstrip(':')
                continue
            if tokens[0] == gen:
                curr_num_char = int(tokens[1])
                if curr_num_char != num_char:
                    continue
                err4 = float(tokens[1 + 4])
                err5 = float(tokens[1 + 5])
                err6 = float(tokens[1 + 6])
                if err4 > 0 or err5 > 0:
                    return None
                return (gen, err6)
        return None

num_char = 165
dirpath = 'results1'
top_n = 10

gens = []

for entry in os.listdir(dirpath):
    filename = os.path.join(dirpath, entry)
    if os.path.isfile(filename):
        res = get_rate(filename, num_char)
        if res is not None:
            gens.append(res)

gens.sort(key=lambda x: x[1])

for gen in gens[:top_n]:
    print(f"{gen[0]}")
```

This output 2 polynomials.

```bash
~/repos/bch ./err6-high-perf.py > gens.txt
~/repos/bch cat gens.txt
U1PIRGA7
AJ4RJKVB
```

Then again following the Jamis search steps, we built [crccollide.cpp](https://github.com/sipa/ezbase32/blob/master/crccollide.cpp) with `LENGTH=50` parameter, and then calculated false positive error detection rates:

```bash
$ g++ ezbase32/crccollide.cpp -o crccollide_50_4 -lpthread -O3 -DLENGTH=50 -DERRORS=4 -DTHREADS=4
$ mkdir results2
$ parallel -a gens.txt ./crccollide_50_4 {} ">" results2/{}.txt
```

Comparing the results of `AJ4RJKVB` and `U1PIRGA7` manually, we found that `U1PIRGA7` is slightly performing better and selected it as the best-performing generator polynomial.

## 4. Building mod constants
With the following `enc-gen-to-sage-code.py` script, we generated code to define  `U1PIRGA7` inside Sagemath script:

```Python
#!/usr/bin/python3

import sys

if len(sys.argv) < 2:
    exit(f'Usage: {sys.argv[0]} [8-char-poly]')

gen = sys.argv[1]

CHARSET = "0123456789ABCDEFGHIJKLMNOPQRSTUV"
degree = 8

def gen_to_str(gen):
    gen_str = ""
    for i in range(degree):
        gen_str = CHARSET[int(gen) % 32] + gen_str
        gen /= 32
    return gen_str

def str_to_gen(s):
    acc = 0
    coeffs = []
    for c in s:
        acc <<= 5
        i = CHARSET.index(c)
        coeffs.append(i)
        acc += i
    return (acc, coeffs)

def pf_coeffs(coeffs):
    terms = [f'x^{len(coeffs)}']
    for (i,coeff) in enumerate(coeffs):
        if i == len(coeffs) - 1:
            terms.append(f'c({coeff})')
        else:
            terms.append(f'c({coeff})*x^{len(coeffs)-i-1}')
    term_str = ' + '.join(terms)
    return f'G = {term_str}'

print(f'Encoded generator: {gen}')
acc_coeffs = str_to_gen(gen)
print(acc_coeffs)

recovered_gen = gen_to_str(acc_coeffs[0])
if recovered_gen != gen:
    exit(f'Expected recovered generator to be {gen}, but got {recov
ered_gen}')

print(pf_coeffs(acc_coeffs[1]))
```

Below is the output:

```bash
$ ./enc-gen-to-sage-code.py U1PIRGA7
Encoded generator: U1PIRGA7
(1032724529479, [30, 1, 25, 18, 27, 16, 10, 7])
G = x^8 + c(30)*x^7 + c(1)*x^6 + c(25)*x^5 + c(18)*x^4 + c(27)*x^3
+ c(16)*x^2 + c(10)*x^1 + c(7)
```

Then we embedded the `G = ...` line to the below Sagemath script which is a modified version of a script in `bech32.cpp` comments and run it.

```python
B = GF(2) # Binary field
BP.<b> = B[] # Polynomials over the binary field
F_mod = b**5 + b**3 + 1
F.<f> = GF(32, modulus=F_mod, repr='int') # GF(32) definition
FP.<x> = F[] # Polynomials over GF(32)
E_mod = x**2 + F.fetch_int(9)*x + F.fetch_int(23)
E.<e> = F.extension(E_mod) # GF(1024) extension field definition
for p in divisors(E.order() - 1): # Verify e has order 1023.
   assert((e**p == 1) == (p % 1023 == 0))

c = lambda n: F.fetch_int(n)
G = x^8 + c(30)*x^7 + c(1)*x^6 + c(25)*x^5 + c(18)*x^4 + c(27)*x^3 + c(16)*x^2 + c(10)*x^1 + c(7)

print(G) # Print out the generator

mod_consts = []

for i in [1,2,4,8,16]: # Print out {1,2,4,8,16}*(g(x) mod x^6), packed in hex integers.
  v = 0
  for coef in reversed((F.fetch_int(i)*(G % x**8)).coefficients(sparse=True)):
    v = v*32 + coef.integer_representation()
  mod_consts.append("0x%x" % v)

for (i, mod_const) in enumerate(mod_consts):
    p = 2**i
    s = f'        if (c0 & {p})  c ^= {mod_const}; //  {{{p}}}k(x) ='
    print(s)
```

## 5. Updating mod constants in PolyMod function

Running the above script, we got the following `C++` code. We replaced the corresponding part in the `PolyMod` function with it to use `U1PIRGA7` as the generator polynomial.

```c++
        if (c0 & 1)  c ^= 0xf0732dc147; //  {1}k(x) = {30}*x^7 + {1}x^6 + {25}*x^5 + {18}*x^4 + {27}*x^3 + {16}*x^2 + {10}*x + {7}
        if (c0 & 2)  c ^= 0xa8b6dfa68e; //  {2}k(x)
        if (c0 & 4)  c ^= 0x193fabc83c; //  {4}k(x)
        if (c0 & 8)  c ^= 0x322fd3b451; //  {8}k(x)
        if (c0 & 16)  c ^= 0x640f37688b; //  {16}k(x)
```
