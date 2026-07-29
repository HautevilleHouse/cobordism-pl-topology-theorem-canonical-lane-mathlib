import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyTheoremCanonicalLaneLean

structure SurgeryExactSequence {G : CobordismClassGroup} {P : PontryaginThomConstruction G} {I : CobordismInvariancePackage G P} {O : SurgeryObstructionPackage G P I} where
  sequence : Type u
  exactness : Prop
  boundaryMapDefined : Prop
  sequenceClosed : Prop

structure SurgeryExactSequenceEvidence {G : CobordismClassGroup} {P : PontryaginThomConstruction G} {I : CobordismInvariancePackage G P} {O : SurgeryObstructionPackage G P I} (S : SurgeryExactSequence G P I O) where
  exactnessClosed : S.exactness
  boundaryMapDefinedClosed : S.boundaryMapDefined
  sequenceClosed : S.sequenceClosed

def SurgeryExactSequenceClosed {G : CobordismClassGroup} {P : PontryaginThomConstruction G} {I : CobordismInvariancePackage G P} {O : SurgeryObstructionPackage G P I} (S : SurgeryExactSequence G P I O) : Prop :=
  S.sequenceClosed

theorem surgery_exact_sequence_closed_from_evidence {G : CobordismClassGroup} {P : PontryaginThomConstruction G} {I : CobordismInvariancePackage G P} {O : SurgeryObstructionPackage G P I} (S : SurgeryExactSequence G P I O) (E : SurgeryExactSequenceEvidence S) :
    SurgeryExactSequenceClosed S := E.sequenceClosed

end CobordismPlTopologyTheoremCanonicalLaneLean
end HautevilleHouse