// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.
#pragma once

#include <crypto/sha256.h>

#include <algorithm>
#include <cstdint>
#include <cstdio>
#include <map>
#include <optional>
#include <stdexcept>
#include <string>
#include <vector>

class CMnemonic
{

    const std::vector<unsigned char> entropy_;
    const std::string language_;

	// BIP-39 terminology, refer to spec.
	const int ENT, CS, MS;

public:

    explicit CMnemonic(std::vector<unsigned char> entropy, const std::string& language)
		: entropy_(entropy)
		, language_(language)
		, ENT(entropy.size() * 8)
		, CS(ENT / 32)
		, MS((ENT + CS) / 11)
        , dic(nullptr)
    {
        if ((entropy_.size() % 4) ||
            (entropy_.size() < 16) ||
            (entropy_.size() > 32))
        {
            throw std::invalid_argument("entropy: size error");
        }

        if (dictionaries_.count( language ) == 0)
        {
            throw std::invalid_argument("unknown language");
        }

        dic = dictionaries_.at( language );
    }
    explicit CMnemonic(std::vector<unsigned char> entropy) : CMnemonic(entropy, "english") {};

	/* Get the words associated with this mnemonic. */
	std::vector<std::string> Words();

	/* From a flat string to a vector. */
	static
	std::vector<std::string> sentence_to_words(const std::string& sentence);
		
    /* From a vector to a flat string. */
    static
    std::string words_to_sentence(std::vector<std::string> words);

private:

    typedef const std::map<const int, const std::string> dict_t;
    dict_t* dic;

    // ISO 639-1
    static dict_t
        en, ja, ko, es, zh_s, zh_t, fr, it, cs, pt;

    const static inline
    std::map< std::string, dict_t* > dictionaries_ {
        {"english",&en},
        {"japanese",&ja},
        {"korean",&ko},
        {"spanish",&es},
        {"chinese_simplified",&zh_s},
        {"chinese_traditional",&zh_t},
        {"french",&fr},
        {"italian",&it},
        {"czech",&cs},
        {"portuguese",&pt},
    };

};
