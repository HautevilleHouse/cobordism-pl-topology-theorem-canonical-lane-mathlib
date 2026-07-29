import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyTheoremCanonicalLaneLean

structure PLLinearDualPackage where
  plManifold : Type u
  plStructure : Prop
  plStructureClosed : plStructure
  polyhedron : Type v
  polyhedronTopology : TopologicalSpace polyhedron
  triangulation : Prop
  triangulationClosed : triangulation

structure PLTubularNeighborhoodPackage (P : PLLinearDualPackage) where
  embedding : P.plManifold → P.polyhedron
  tubularNeighborhood : Prop
  tubularNeighborhoodClosed : tubularNeighborhood
  isotopyExtension : Prop
  isotopyExtensionClosed : isotopyExtension

structure CobordismStructurePackage (P : PLLinearDualPackage) (T : PLTubularNeighborhoodPackage P) where
  sourceManifold : Type u
  targetManifold : Type v
  cobordismManifold : Type w
  plTriangulation : Prop
  sCobordismCondition : Prop
  hCobordismCondition : Prop
  cobordismAdmissible : Prop
  plTriangulationClosed : plTriangulation
  sCobordismConditionClosed : sCobordismCondition
  hCobordismConditionClosed : hCobordismCondition
  cobordismAdmissibleClosed : cobordismAdmissible

def CobordismPLStructureClosed {P : PLLinearDualPackage} {T : PLTubularNeighborhoodPackage P} (C : CobordismStructurePackage P T) : Prop :=
  C.plTriangulation ∧ C.sCobordismCondition ∧ C.hCobordismCondition ∧ C.cobordismAdmissible

end CobordismPlTopologyTheoremCanonicalLaneLean
end HautevilleHouse