g++ ezbase32/crccollide.cpp -o crccollide -lpthread -O3
 
parallel -a list.txt ./crccollide {} 5 120 ">" results1/{}.txt

39762158.30s user 2845631.54s system 1975% cpu 599:14:56.86 total

 
~/repos/bch ls -1 results1 | wc -l
   16976

it turned out that the double public key encoded in bech32 string has length 165 when the hrp is 2-char
data length is 96 * 8 / 5 = 153.6. so requires 154 bytes
when 8-byte checksum and 2-byte hrp and 1-byte separator are added to it, the total size becomes 165 bytes

err6-high-perf.py   // prints out all generators above satisfying our need

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
    #print(f"{gen[0]} {gen[1]}")
    print(f"{gen[0]}")
```

~/repos/bch ./err6-high-perf.py > gens.txt
~/repos/bch cat gens.txt
U1PIRGA7
AJ4RJKVB


g++ ezbase32/crccollide.cpp -o crccollide_50_4 -lpthread -O3 -DLENGTH=50 -DERRORS=4 -DTHREADS=4

parallel -a gens.txt ./crccollide_50_4 {} ">" results2/{}.txt

Compared AJ4RJKVB.txt U1PIRGA7.txt
U1PIRGA7 is slightly performing better

enc-gen-to-sage-code.py

```
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

~/repos/bch ./enc-gen-to-sage-code.py U1PIRGA7
Encoded generator: U1PIRGA7
(1032724529479, [30, 1, 25, 18, 27, 16, 10, 7])
G = x^8 + c(30)*x^7 + c(1)*x^6 + c(25)*x^5 + c(18)*x^4 + c(27)*x^3 
+ c(16)*x^2 + c(10)*x^1 + c(7)

mod-coeff.sage
``` 
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

