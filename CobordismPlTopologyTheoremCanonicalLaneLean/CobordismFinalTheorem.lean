import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CobordismPlTopologyTheoremCanonicalLaneLean.CobordismBridgeLemmas
import HautevilleHouse.CobordismPlTopologyTheoremCanonicalLaneLean.CobordismGateLemmas

namespace HautevilleHouse
namespace CobordismPlTopologyTheoremCanonicalLaneLean

def ConstrainedCobordismClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cobordism_endgame (A : AdmissibleClass) :
    ConstrainedCobordismClosure A :=
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CobordismPlTopologyTheoremCanonicalLaneLean
end HautevilleHouse