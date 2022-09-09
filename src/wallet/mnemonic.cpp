// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <wallet/mnemonic.h>

#include <algorithm>
#include <istream>
#include <iterator>
#include <numeric>
#include <sstream>
#include <stdexcept>
#include <string>
#include <vector>

#include <arith_uint256.h>
#include <uint256.h>
#include <util/strencodings.h>

std::vector<std::string>
CMnemonic::sentence_to_words(const std::string& sentence)
{
    std::vector<std::string> words;

    std::stringstream ss(sentence);
    std::istream_iterator<std::string> begin(ss);
    std::istream_iterator<std::string> end;
    std::vector<std::string> tokens(begin, end);

    for (auto& s: tokens) {
        words.push_back(s);
    }

    return words;
}

std::string
CMnemonic::words_to_sentence(std::vector<std::string> words)
{

    auto plus = [](auto& dst, auto& src)
    {
        dst.append( (dst.size() ? " " : "") + src);
        return dst;
    };

    return std::reduce(words.begin(), words.end(), std::string(), plus);
}

std::vector<std::string>
CMnemonic::Words()
{
    CSHA256 sha256;
    std::vector<std::string> words (MS);
    uint256 hashout;

    sha256.Reset();
    sha256.Write( entropy_.data() , entropy_.size());
    sha256.Finalize(hashout.begin());

    assert( entropy_.size() + CS * 8 <= 264 );

    // Prepare an integer by concatenating the checksum to the entropy bits.
    // The checksum has CS bits, taken from hashout. See this little table.
    //
    //
    //    CS = ENT / 32
    //    MS = (ENT + CS) / 11
    //
    //    |  ENT  | CS | ENT+CS |  MS  |
    //    +-------+----+--------+------+
    //    |  128  |  4 |   132  |  12  |
    //    |  160  |  5 |   165  |  15  |
    //    |  192  |  6 |   198  |  18  |
    //    |  224  |  7 |   231  |  21  |
    //    |  256  |  8 |   264  |  24  |     <<  maximum sentence length
    //

    arith_uint512 ms ( HexStr(entropy_) );
    uint8_t checksum (*hashout.data());

    assert( (CS >= 4) && (CS <= 8) );
    checksum >>= (8 - CS);
    ms <<= CS;
    ms |= checksum;

    // Generate the output words by taking the full mnemonic string
    // in eleven bit chunks of data and a lookup into the dictionary.
    // There are a total of MS mnemonic words.

    for (int i = 0; i < MS; ++i)
    {
        arith_uint512 word (ms);
        word >>= 11 * (MS - i - 1);
        word &= 0b11111111111;      // fixed for all mnemonic string lengths.
        words[i] = dic->at( word.GetLow64() & 0b11111111111 );
    }

    return words;
}
