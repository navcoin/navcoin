// Copyright (c) 2011-2021 The Bitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/range_proof/range_proof_with_transcript.h>
#include <blsct/arith/her/her_g1point.h>
#include <blsct/arith/her/her_scalar.h>

#include <test/util/setup_common.h>
#include <boost/test/unit_test.hpp>

BOOST_FIXTURE_TEST_SUITE(range_proof_with_transcript_tests, HerTestingSetup)

BOOST_AUTO_TEST_CASE(test_range_proof_with_transcript_recover_num_rounds)
{
    BOOST_CHECK((RangeProofWithTranscript<HerG1Point,HerScalar>::RecoverNumRounds(1ul)) == 6ul);
    BOOST_CHECK((RangeProofWithTranscript<HerG1Point,HerScalar>::RecoverNumRounds(2ul)) == 7ul);
    BOOST_CHECK((RangeProofWithTranscript<HerG1Point,HerScalar>::RecoverNumRounds(3ul)) == 8ul);
    BOOST_CHECK((RangeProofWithTranscript<HerG1Point,HerScalar>::RecoverNumRounds(4ul)) == 8ul);
    BOOST_CHECK((RangeProofWithTranscript<HerG1Point,HerScalar>::RecoverNumRounds(5ul)) == 9ul);
    BOOST_CHECK((RangeProofWithTranscript<HerG1Point,HerScalar>::RecoverNumRounds(6ul)) == 9ul);
    BOOST_CHECK((RangeProofWithTranscript<HerG1Point,HerScalar>::RecoverNumRounds(7ul)) == 9ul);
    BOOST_CHECK((RangeProofWithTranscript<HerG1Point,HerScalar>::RecoverNumRounds(8ul)) == 9ul);
    BOOST_CHECK((RangeProofWithTranscript<HerG1Point,HerScalar>::RecoverNumRounds(9ul)) == 10ul);
    BOOST_CHECK((RangeProofWithTranscript<HerG1Point,HerScalar>::RecoverNumRounds(10ul)) == 10ul);
    BOOST_CHECK((RangeProofWithTranscript<HerG1Point,HerScalar>::RecoverNumRounds(11ul)) == 10ul);
    BOOST_CHECK((RangeProofWithTranscript<HerG1Point,HerScalar>::RecoverNumRounds(12ul)) == 10ul);
    BOOST_CHECK((RangeProofWithTranscript<HerG1Point,HerScalar>::RecoverNumRounds(13ul)) == 10ul);
    BOOST_CHECK((RangeProofWithTranscript<HerG1Point,HerScalar>::RecoverNumRounds(14ul)) == 10ul);
    BOOST_CHECK((RangeProofWithTranscript<HerG1Point,HerScalar>::RecoverNumRounds(15ul)) == 10ul);
    BOOST_CHECK((RangeProofWithTranscript<HerG1Point,HerScalar>::RecoverNumRounds(16ul)) == 10ul);
}

BOOST_AUTO_TEST_SUITE_END()
