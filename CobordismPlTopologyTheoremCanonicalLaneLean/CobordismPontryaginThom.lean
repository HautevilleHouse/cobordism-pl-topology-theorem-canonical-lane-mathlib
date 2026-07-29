import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CobordismPlTopologyTheoremCanonicalLaneLean.CobordismObjects

namespace HautevilleHouse
namespace CobordismPlTopologyTheoremCanonicalLaneLean

structure PontryaginThomConstructionPackage where
  manifold : CobordismSpace
  embeddedManifold : CobordismSpace
  normalBundle : Type u
  thomSpace : Type v
  homotopyEquivalence : Prop
  isomorphismComputed : Prop

structure PontryaginThomEvidence (P : PontryaginThomConstructionPackage) where
  homotopyEquivalenceClosed : P.homotopyEquivalence
  isomorphismComputedClosed : P.isomorphismComputed

def PontryaginThomClosed (P : PontryaginThomConstructionPackage) : Prop :=
  P.homotopyEquivalence ∧ P.isomorphismComputed

theorem pontryagin_thom_closed_from_evidence (P : PontryaginThomConstructionPackage)
    (E : PontryaginThomEvidence P) : PontryaginThomClosed P :=
  exact And.intro E.homotopyEquivalenceClosed E.isomorphismComputedClosed

end CobordismPlTopologyTheoremCanonicalLaneLean
end HautevilleHouse