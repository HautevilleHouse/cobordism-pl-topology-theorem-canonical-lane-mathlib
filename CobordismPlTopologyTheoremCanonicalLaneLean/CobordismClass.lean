import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyTheoremCanonicalLaneLean

structure CobordismClass where
  sourceManifold : Type u
  targetManifold : Type v
  cobordism : Type w
  plStructure : Prop
  cobordismClassRelation : Prop
  categoryComposition : Prop

structure CobordismAdmittedObject where
  cobClass : CobordismClass
  plCobordismBetweenClosedManifolds : Prop
  dimensionConsistent : Prop
  conclusion : plCobordismBetweenClosedManifolds

def CobordismWitnessClosed (O : CobordismAdmittedObject) : Prop :=
  O.plCobordismBetweenClosedManifolds

end CobordismPlTopologyTheoremCanonicalLaneLean
end HautevilleHouse