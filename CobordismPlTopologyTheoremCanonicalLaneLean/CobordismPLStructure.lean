import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyTheoremCanonicalLaneLean

structure PLStructurePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  plAtlas : Type v
  plCompatible : Prop
  plTriangulation : Prop

structure PLStructureEvidence (P : PLStructurePackage) where
  plCompatibleClosed : P.plCompatible
  plTriangulationClosed : P.plTriangulation

def PLStructureClosed (P : PLStructurePackage) : Prop :=
  P.plCompatible ∧ P.plTriangulation

theorem pl_structure_closed_from_evidence (P : PLStructurePackage)
    (E : PLStructureEvidence P) : PLStructureClosed P := by
  exact And.intro E.plCompatibleClosed E.plTriangulationClosed

end CobordismPlTopologyTheoremCanonicalLaneLean
end HautevilleHouse
