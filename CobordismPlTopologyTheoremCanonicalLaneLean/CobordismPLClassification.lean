import canonicalLaneMathlib.AdmissibleClass
import CobordismPlTopologyTheoremCanonicalLaneLean.CobordismClassificationTheorem
import CobordismPlTopologyTheoremCanonicalLaneLean.CobordismPLStructure

namespace HautevilleHouse
namespace CobordismPlTopologyTheoremCanonicalLaneLean

structure PLClassificationPackage where
  plStructure : PLStructurePackage
  classificationTheorem : ClassificationTheoremPackage
  compatibilityCondition : Prop

structure PLClassificationEvidence (P : PLClassificationPackage) where
  plStructureClosed : PLStructureClosed P.plStructure
  classificationTheoremClosed : ClassificationTheoremClosed P.classificationTheorem
  compatibilityConditionClosed : P.compatibilityCondition

def PLClassificationClosed (P : PLClassificationPackage) : Prop :=
  PLStructureClosed P.plStructure ∧
  ClassificationTheoremClosed P.classificationTheorem ∧
  P.compatibilityCondition

theorem pl_classification_closed_from_evidence (P : PLClassificationPackage)
    (E : PLClassificationEvidence P) : PLClassificationClosed P := by
  exact And.intro E.plStructureClosed
    (And.intro E.classificationTheoremClosed E.compatibilityConditionClosed)

end CobordismPlTopologyTheoremCanonicalLaneLean
end HautevilleHouse
