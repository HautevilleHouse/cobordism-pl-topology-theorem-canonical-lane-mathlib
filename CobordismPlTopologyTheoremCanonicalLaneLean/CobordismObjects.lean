import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyTheoremCanonicalLaneLean

structure CobordismSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CobordismAdmittedObject where
  space : CobordismSpace
  dimension : Nat
  compact : Prop
  boundary : CobordismSpace
  boundaryComponents : List CobordismSpace
  classificationTheorem : Prop
  conclusion : classificationTheorem

structure CobordismEndgameState where
  object : CobordismAdmittedObject

def CobordismWitnessClosed (O : CobordismAdmittedObject) : Prop :=
  O.classificationTheorem

end CobordismPlTopologyTheoremCanonicalLaneLean
end HautevilleHouse