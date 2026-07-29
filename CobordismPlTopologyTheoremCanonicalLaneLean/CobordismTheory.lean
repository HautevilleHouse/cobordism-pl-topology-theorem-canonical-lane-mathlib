import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyTheoremCanonicalLaneLean

structure CobordismPackage where
  sourceManifold : Type u
  targetManifold : Type v
  sourceTopology : TopologicalSpace sourceManifold
  targetTopology : TopologicalSpace targetManifold
  cobordismManifold : Type w
  cobordismTopology : TopologicalSpace cobordismManifold
  boundaryComponents : cobordismManifold → Prop
  sourceEmbedding : sourceManifold → cobordismManifold
  targetEmbedding : targetManifold → cobordismManifold
  boundaryDecomposition : Prop
  cobordismSmoothStructure : Prop

structure CobordismEvidence (C : CobordismPackage) where
  boundaryDecompositionClosed : C.boundaryDecomposition
  cobordismSmoothStructureClosed : C.cobordismSmoothStructure

def CobordismClosed (C : CobordismPackage) : Prop :=
  C.boundaryDecomposition ∧ C.cobordismSmoothStructure

theorem cobordism_closed_from_evidence (C : CobordismPackage) (E : CobordismEvidence C) :
    CobordismClosed C := by
  exact And.intro E.boundaryDecompositionClosed E.cobordismSmoothStructureClosed

end CobordismPlTopologyTheoremCanonicalLaneLean
end HautevilleHouse