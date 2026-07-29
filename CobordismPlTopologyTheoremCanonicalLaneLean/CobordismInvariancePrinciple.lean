import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyTheoremCanonicalLaneLean

structure InvariancePrinciplePackage where
  sourceManifold : Type u
  targetManifold : Type v
  continuousMap : Type w
  homotopyEquivalence : Prop
  cobordismInvariant : Prop

structure InvariancePrincipleEvidence (I : InvariancePrinciplePackage) where
  homotopyEquivalenceClosed : I.homotopyEquivalence
  cobordismInvariantClosed : I.cobordismInvariant

def InvariancePrincipleClosed (I : InvariancePrinciplePackage) : Prop :=
  I.homotopyEquivalence ∧ I.cobordismInvariant

theorem invariance_principle_closed_from_evidence (I : InvariancePrinciplePackage)
    (E : InvariancePrincipleEvidence I) : InvariancePrincipleClosed I := by
  exact And.intro E.homotopyEquivalenceClosed E.cobordismInvariantClosed

end CobordismPlTopologyTheoremCanonicalLaneLean
end HautevilleHouse
