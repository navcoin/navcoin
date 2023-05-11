#include <blsct/arith/elements.h>
#include <blsct/set_mem_proof/set_mem_proof_setup.h>
#include <blsct/building_block/generator_deriver.h>
#include <ctokens/tokenid.h>

template <typename T>
const SetMemProofSetup<T>& SetMemProofSetup<T>::Get()
{
    using Point = typename T::Point;
    using Points = Elements<Point>;
    static SetMemProofSetup<T>* x = nullptr;

    std::lock_guard<std::mutex> lock(m_init_mutex);
    if (m_is_initialized) return *x;

    Point g = Point::GetBasePoint();
    Point h = m_deriver.Derive(g, 0);
    Points hs = GenGenerators(h, N);
    PedersenCommitment<T> pedersen_commitment(g, h);
    x = new SetMemProofSetup<T>(g, h, hs, pedersen_commitment);

    m_is_initialized = true;
    return *x;
}
template
const SetMemProofSetup<Secp256k1>& SetMemProofSetup<Secp256k1>::Get();

template <typename T>
typename SetMemProofSetup<T>::Points SetMemProofSetup<T>::GenGenerators(
    const typename T::Point& base_point,
    const size_t& size
) {
    Points ps;

    for (size_t i=0; i<size; ++i) {
        Point p = m_deriver.Derive(base_point, i);
        ps.Add(p);
    }
    return ps;
}
template
typename SetMemProofSetup<Secp256k1>::Points SetMemProofSetup<Secp256k1>::GenGenerators(
    const typename Secp256k1::Point& base_point,
    const size_t& size
);

template <typename T>
typename T::Scalar SetMemProofSetup<T>::H1(const std::vector<uint8_t>& msg) const
{
    Scalar ret(msg, 1);
    return ret;
}
template
typename Secp256k1::Scalar SetMemProofSetup<Secp256k1>::H1(const std::vector<uint8_t>& msg) const;

template <typename T>
typename T::Scalar SetMemProofSetup<T>::H2(const std::vector<uint8_t>& msg) const
{
    Scalar ret(msg, 2);
    return ret;
}
template
typename Secp256k1::Scalar SetMemProofSetup<Secp256k1>::H2(const std::vector<uint8_t>& msg) const;

template <typename T>
typename T::Scalar SetMemProofSetup<T>::H3(const std::vector<uint8_t>& msg) const
{
    Scalar ret(msg, 3);
    return ret;
}
template
typename Secp256k1::Scalar SetMemProofSetup<Secp256k1>::H3(const std::vector<uint8_t>& msg) const;

template <typename T>
typename T::Scalar SetMemProofSetup<T>::H4(const std::vector<uint8_t>& msg) const
{
    Scalar ret(msg, 4);
    return ret;
}
template
typename Secp256k1::Scalar SetMemProofSetup<Secp256k1>::H4(const std::vector<uint8_t>& msg) const;

template <typename T>
typename T::Point SetMemProofSetup<T>::GenPoint(const std::vector<uint8_t>& msg, const uint64_t& i)
{
    Scalar x;
    x.SetVch(msg);
    uint256 hash = x.GetHashWithSalt(i);
    Point p(hash);
    return p;
}
template
typename Secp256k1::Point SetMemProofSetup<Secp256k1>::GenPoint(const std::vector<uint8_t>& msg, const uint64_t& i);

template <typename T>
typename T::Point SetMemProofSetup<T>::H5(const std::vector<uint8_t>& msg) const
{
    return GenPoint(msg, 5);
}
template
typename Secp256k1::Point SetMemProofSetup<Secp256k1>::H5(const std::vector<uint8_t>& msg) const;

template <typename T>
typename T::Point SetMemProofSetup<T>::H6(const std::vector<uint8_t>& msg) const
{
    return GenPoint(msg, 6);
}
template
typename Secp256k1::Point SetMemProofSetup<Secp256k1>::H6(const std::vector<uint8_t>& msg) const;

template <typename T>
typename T::Point SetMemProofSetup<T>::H7(const std::vector<uint8_t>& msg) const
{
    return GenPoint(msg, 7);
}
template
typename Secp256k1::Point SetMemProofSetup<Secp256k1>::H7(const std::vector<uint8_t>& msg) const;
