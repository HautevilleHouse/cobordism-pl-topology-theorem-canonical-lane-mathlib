import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CobordismPlTopologyTheoremCanonicalLaneLean.CobordismBridgeLemmas

namespace HautevilleHouse
namespace CobordismPlTopologyTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A :=
  exact A.gateWitness

end CobordismPlTopologyTheoremCanonicalLaneLean
end HautevilleHouse