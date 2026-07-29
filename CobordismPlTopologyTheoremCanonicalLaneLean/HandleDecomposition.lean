import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyTheoremCanonicalLaneLean

structure HandleAttachmentPackage {P : PLLinearDualPackage} {T : PLTubularNeighborhoodPackage P} (C : CobordismStructurePackage P T) where
  index : ℕ
  attachingSphere : Type u
  tubularNeighborhood : Prop
  framedEmbedding : Prop
  handleAttached : Prop
  framedEmbeddingClosed : framedEmbedding
  handleAttachedClosed : handleAttached

structure HandleDecompositionPackage {P : PLLinearDualPackage} {T : PLTubularNeighborhoodPackage P} {C : CobordismStructurePackage P T} (H : HandleAttachmentPackage C) where
  handleBodies : List (HandleAttachmentPackage C)
  decompositionComplete : Prop
  cancellationAllowed : Prop
  decompositionCompleteClosed : decompositionComplete
  cancellationAllowedClosed : cancellationAllowed

def HandleDecompositionClosed {P : PLLinearDualPackage} {T : PLTubularNeighborhoodPackage P} {C : CobordismStructurePackage P T} {H : HandleAttachmentPackage C} (D : HandleDecompositionPackage H) : Prop :=
  D.decompositionComplete ∧ D.cancellationAllowed

end CobordismPlTopologyTheoremCanonicalLaneLean
end HautevilleHouse