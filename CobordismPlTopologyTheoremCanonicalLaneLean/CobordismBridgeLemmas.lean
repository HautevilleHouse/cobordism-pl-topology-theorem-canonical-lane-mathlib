import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CobordismPlTopologyTheoremCanonicalLaneLean.CobordismObjects

namespace HautevilleHouse
namespace CobordismPlTopologyTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CobordismWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  exact A.object.conclusion

end CobordismPlTopologyTheoremCanonicalLaneLean
end HautevilleHouse