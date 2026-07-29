import CobordismPlTopologyTheoremCanonicalLaneLean.CobordismClass

namespace HautevilleHouse
namespace CobordismPlTopologyTheoremCanonicalLaneLean

structure PLStructurePackage (C : CobordismClass) where
  triangulation : Prop
  plMap : Prop
  combinatorialInvariance : Prop
  subdivisionStability : Prop

structure PLStructureEvidence {C : CobordismClass} (P : PLStructurePackage C) where
  triangulationClosed : P.triangulation
  plMapClosed : P.plMap
  combinatorialInvarianceClosed : P.combinatorialInvariance
  subdivisionStabilityClosed : P.subdivisionStability

def PLStructureClosed {C : CobordismClass} (P : PLStructurePackage C) : Prop :=
  P.triangulation ∧ P.plMap ∧ P.combinatorialInvariance ∧ P.subdivisionStability

theorem pl_structure_closed_from_evidence
    {C : CobordismClass} (P : PLStructurePackage C) (E : PLStructureEvidence P) :
    PLStructureClosed P := by
  exact And.intro E.triangulationClosed
    (And.intro E.plMapClosed
      (And.intro E.combinatorialInvarianceClosed E.subdivisionStabilityClosed))

end CobordismPlTopologyTheoremCanonicalLaneLean
end HautevilleHouse