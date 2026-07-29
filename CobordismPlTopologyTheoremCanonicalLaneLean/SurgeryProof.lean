import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyTheoremCanonicalLaneLean

structure PLSurgeryPackage {P : PLLinearDualPackage} {T : PLTubularNeighborhoodPackage P} {C : CobordismStructurePackage P T} where
  surgeryData : Type u
  traceCobordism : CobordismStructurePackage P T
  surgeryPerformed : Prop
  homologyChanged : Prop
  surgeryPerformedClosed : surgeryPerformed
  homologyChangedClosed : homologyChanged

structure PLSurgeryEvidence {P : PLLinearDualPackage} {T : PLTubularNeighborhoodPackage P} {C : CobordismStructurePackage P T} (S : PLSurgeryPackage) where
  surgeryPerformedWitness : S.surgeryPerformed
  homologyChangedWitness : S.homologyChanged

def PLSurgeryClosed {P : PLLinearDualPackage} {T : PLTubularNeighborhoodPackage P} {C : CobordismStructurePackage P T} (S : PLSurgeryPackage) : Prop :=
  S.surgeryPerformed ∧ S.homologyChanged

theorem pl_surgery_closed_from_evidence {P : PLLinearDualPackage} {T : PLTubularNeighborhoodPackage P} {C : CobordismStructurePackage P T} (S : PLSurgeryPackage) (E : PLSurgeryEvidence S) : PLSurgeryClosed S :=
  And.intro E.surgeryPerformedWitness E.homologyChangedWitness

end CobordismPlTopologyTheoremCanonicalLaneLean
end HautevilleHouse