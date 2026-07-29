import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyTheoremCanonicalLaneLean

structure PLBordismPackage {C : CobordismPackage} where
  plStructure : C.cobordismManifold → Prop
  triangulationCompatible : Prop
  combinatorialInvariance : Prop
  plCobordismClass : Prop

structure PLBordismEvidence {C : CobordismPackage} (P : PLBordismPackage C) where
  plStructureClosed : P.plStructure
  triangulationCompatibleClosed : P.triangulationCompatible
  combinatorialInvarianceClosed : P.combinatorialInvariance
  plCobordismClassClosed : P.plCobordismClass

def PLBordismClosed {C : CobordismPackage} (P : PLBordismPackage C) : Prop :=
  P.plStructure ∧ P.triangulationCompatible ∧ P.combinatorialInvariance ∧ P.plCobordismClass

theorem pl_bordism_closed_from_evidence {C : CobordismPackage} (P : PLBordismPackage C) (E : PLBordismEvidence P) :
    PLBordismClosed P := by
  exact And.intro E.plStructureClosed (And.intro E.triangulationCompatibleClosed (And.intro E.combinatorialInvarianceClosed E.plCobordismClassClosed))

end CobordismPlTopologyTheoremCanonicalLaneLean
end HautevilleHouse