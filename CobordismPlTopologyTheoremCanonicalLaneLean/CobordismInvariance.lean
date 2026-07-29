import CobordismPlTopologyTheoremCanonicalLaneLean.PLStructure

namespace HautevilleHouse
namespace CobordismPlTopologyTheoremCanonicalLaneLean

structure CobordismInvariancePackage {C : CobordismClass} (P : PLStructurePackage C) where
  homologyInvariance : Prop
  signatureInvariance : Prop
  characteristicClassInvariance : Prop

structure CobordismInvarianceEvidence {C : CobordismClass}
    {P : PLStructurePackage C} (I : CobordismInvariancePackage P) where
  homologyInvarianceClosed : I.homologyInvariance
  signatureInvarianceClosed : I.signatureInvariance
  characteristicClassInvarianceClosed : I.characteristicClassInvariance

def CobordismInvarianceClosed {C : CobordismClass}
    {P : PLStructurePackage C} (I : CobordismInvariancePackage P) : Prop :=
  I.homologyInvariance ∧ I.signatureInvariance ∧ I.characteristicClassInvariance

theorem cobordism_invariance_closed_from_evidence
    {C : CobordismClass} {P : PLStructurePackage C}
    (I : CobordismInvariancePackage P) (E : CobordismInvarianceEvidence I) :
    CobordismInvarianceClosed I := by
  exact And.intro E.homologyInvarianceClosed
    (And.intro E.signatureInvarianceClosed E.characteristicClassInvarianceClosed)

end CobordismPlTopologyTheoremCanonicalLaneLean
end HautevilleHouse