import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyTheoremCanonicalLaneLean

structure CWComplexPackage {P : PLLinearDualPackage} {T : PLTubularNeighborhoodPackage P} where
  skeleton : ℕ → Type u
  attachingMaps : Type v
  cellularHomology : Prop
  cellularHomologyClosed : cellularHomology

structure PLBordismGroupPackage {P : PLLinearDualPackage} {T : PLTubularNeighborhoodPackage P} (C : CWComplexPackage) where
  dimension : ℕ
  bordismClass : Type u
  additionDefined : Prop
  groupStructure : Prop
  additionClosed : additionDefined
  groupClosed : groupStructure

def PLBordismGroupClosed {P : PLLinearDualPackage} {T : PLTubularNeighborhoodPackage P} {C : CWComplexPackage} (B : PLBordismGroupPackage C) : Prop :=
  B.additionDefined ∧ B.groupStructure

end CobordismPlTopologyTheoremCanonicalLaneLean
end HautevilleHouse