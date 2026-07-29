import canonicalLaneMathlib.AdmissibleClass
import CobordismPlTopologyTheoremCanonicalLaneLean.CobordismPLClassification
import CobordismPlTopologyTheoremCanonicalLaneLean.BridgeLemmas
import CobordismPlTopologyTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CobordismPlTopologyTheoremCanonicalLaneLean

def ConstrainedCobordismPLClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cobordism_pl_endgame (A : AdmissibleClass) :
    ConstrainedCobordismPLClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CobordismPlTopologyTheoremCanonicalLaneLean
end HautevilleHouse
