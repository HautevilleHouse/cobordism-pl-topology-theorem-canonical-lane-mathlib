import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyTheoremCanonicalLaneLean

structure CobordismGroupPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  dimension : Nat
  oriented : Prop
  fundamentalGroup : Type v
  fundamentalGroupComputed : Prop

structure CobordismGroupEvidence (C : CobordismGroupPackage) where
  fundamentalGroupComputedClosed : C.fundamentalGroupComputed

def CobordismGroupClosed (C : CobordismGroupPackage) : Prop :=
  C.fundamentalGroupComputed

theorem cobordism_group_closed_from_evidence (C : CobordismGroupPackage)
    (E : CobordismGroupEvidence C) : CobordismGroupClosed C := by
  exact E.fundamentalGroupComputedClosed

end CobordismPlTopologyTheoremCanonicalLaneLean
end HautevilleHouse
