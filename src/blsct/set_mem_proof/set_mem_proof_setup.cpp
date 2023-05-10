#include <blsct/arith/elements.h>
#include <blsct/set_mem_proof/set_mem_proof_setup.h>
#include <blsct/building_block/generator_deriver.h>
#include <ctokens/tokenid.h>

using Scalar = Mcl::Scalar;
using Point = Mcl::Point;
using Points = Elements<Point>;

const SetMemProofSetup& SetMemProofSetup::Get()
{
    static SetMemProofSetup* x = nullptr;

    std::lock_guard<std::mutex> lock(m_init_mutex);
    if (m_is_initialized) return *x;

    Point g = Point::GetBasePoint();
    Point h = m_deriver.Derive(g, 0);
    Points hs = GenGenerators(h, N);
    PedersenCommitment<Mcl> pedersen_commitment(g, h);
    x = new SetMemProofSetup(g, h, hs, pedersen_commitment);

    m_is_initialized = true;
    return *x;
}

Points SetMemProofSetup::GenGenerators(const Point& base_point, const size_t& size)
{
    Points ps;

    for (size_t i=0; i<size; ++i) {
        Point p = m_deriver.Derive(base_point, i);
        ps.Add(p);
    }
    return ps;
}

Scalar SetMemProofSetup::H1(const std::vector<uint8_t>& msg) const
{
    Scalar ret(msg, 1);
    return ret;
}

Scalar SetMemProofSetup::H2(const std::vector<uint8_t>& msg) const
{
    Scalar ret(msg, 2);
    return ret;
}

Scalar SetMemProofSetup::H3(const std::vector<uint8_t>& msg) const
{
    Scalar ret(msg, 3);
    return ret;
}

Scalar SetMemProofSetup::H4(const std::vector<uint8_t>& msg) const
{
    Scalar ret(msg, 4);
    return ret;
}

Point SetMemProofSetup::GenPoint(const std::vector<uint8_t>& msg, const uint64_t& i)
{
    Scalar x;
    x.SetVch(msg);
    uint256 hash = x.GetHashWithSalt(i);
    Point p(hash);
    return p;
}

Point SetMemProofSetup::H5(const std::vector<uint8_t>& msg) const
{
    return GenPoint(msg, 5);
}

Point SetMemProofSetup::H6(const std::vector<uint8_t>& msg) const
{
    return GenPoint(msg, 6);
}

Point SetMemProofSetup::H7(const std::vector<uint8_t>& msg) const
{
    return GenPoint(msg, 7);
}
