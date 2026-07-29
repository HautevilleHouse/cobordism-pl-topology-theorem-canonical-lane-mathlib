import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyTheoremCanonicalLaneLean

structure PontryaginThomPackage {C : CobordismPackage} {P : PLBordismPackage C} where
  mapConstruction : Type u
  transversality : Prop
  homotopyEquivalence : Prop
  isomorphismWithCobordism : Prop

structure PontryaginThomEvidence {C : CobordismPackage} {P : PLBordismPackage C} (T : PontryaginThomPackage C P) where
  transversalityClosed : T.transversality
  homotopyEquivalenceClosed : T.homotopyEquivalence
  isomorphismWithCobordismClosed : T.isomorphismWithCobordism

def PontryaginThomClosed {C : CobordismPackage} {P : PLBordismPackage C} (T : PontryaginThomPackage C P) : Prop :=
  T.transversality ∧ T.homotopyEquivalence ∧ T.isomorphismWithCobordism

theorem pontryagin_thom_closed_from_evidence {C : CobordismPackage} {P : PLBordismPackage C} (T : PontryaginThomPackage C P) (E : PontryaginThomEvidence T) :
    PontryaginThomClosed T := by
  exact And.intro E.transversalityClosed (And.intro E.homotopyEquivalenceClosed E.isomorphismWithCobordismClosed)

end CobordismPlTopologyTheoremCanonicalLaneLean
end HautevilleHouse