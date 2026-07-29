import CobordismPlTopologyTheoremCanonicalLaneLean.CobordismInvariance

namespace HautevilleHouse
namespace CobordismPlTopologyTheoremCanonicalLaneLean

structure DualityPackage {C : CobordismClass} {P : PLStructurePackage C}
    (I : CobordismInvariancePackage P) where
  poincareDuality : Prop
  lefschetzDuality : Prop
  intersectionPairing : Prop

structure DualityEvidence {C : CobordismClass} {P : PLStructurePackage C}
    {I : CobordismInvariancePackage P} (D : DualityPackage I) where
  poincareDualityClosed : D.poincareDuality
  lefschetzDualityClosed : D.lefschetzDuality
  intersectionPairingClosed : D.intersectionPairing

def DualityClosed {C : CobordismClass} {P : PLStructurePackage C}
    {I : CobordismInvariancePackage P} (D : DualityPackage I) : Prop :=
  D.poincareDuality ∧ D.lefschetzDuality ∧ D.intersectionPairing

theorem duality_closed_from_evidence
    {C : CobordismClass} {P : PLStructurePackage C}
    {I : CobordismInvariancePackage P} (D : DualityPackage I) (E : DualityEvidence D) :
    DualityClosed D := by
  exact And.intro E.poincareDualityClosed
    (And.intro E.lefschetzDualityClosed E.intersectionPairingClosed)

end CobordismPlTopologyTheoremCanonicalLaneLean
end HautevilleHouse