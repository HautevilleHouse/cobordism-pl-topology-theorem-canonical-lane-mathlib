import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyTheoremCanonicalLaneLean

structure CobordismClassGroup where
  dimension : Nat
  groupType : Type u
  groupStructure : Group groupType
  cobordismRelation : groupType → Prop
  groupClosed : Prop

def CobordismClassGroupClosed (G : CobordismClassGroup) : Prop :=
  G.groupClosed

theorem cobordism_class_group_from_evidence (G : CobordismClassGroup) (h : G.groupClosed) :
    CobordismClassGroupClosed G := h

end CobordismPlTopologyTheoremCanonicalLaneLean
end HautevilleHouse