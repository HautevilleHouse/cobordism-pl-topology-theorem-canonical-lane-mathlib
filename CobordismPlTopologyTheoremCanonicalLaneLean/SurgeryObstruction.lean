import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismPlTopologyTheoremCanonicalLaneLean

structure SurgeryObstructionPackage {G : CobordismClassGroup} {P : PontryaginThomConstruction G} {I : CobordismInvariancePackage G P} where
  normalInvariant : Prop
  surgeryObstructionGroup : Type u
  surgeryObstructionClass : surgeryObstructionGroup
  vanishingCondition : Prop
  obstructionClosed : Prop

structure SurgeryObstructionEvidence {G : CobordismClassGroup} {P : PontryaginThomConstruction G} {I : CobordismInvariancePackage G P} (O : SurgeryObstructionPackage G P I) where
  normalInvariantClosed : O.normalInvariant
  vanishingConditionClosed : O.vanishingCondition
  obstructionClosed : O.obstructionClosed

def SurgeryObstructionClosed {G : CobordismClassGroup} {P : PontryaginThomConstruction G} {I : CobordismInvariancePackage G P} (O : SurgeryObstructionPackage G P I) : Prop :=
  O.obstructionClosed

theorem surgery_obstruction_closed_from_evidence {G : CobordismClassGroup} {P : PontryaginThomConstruction G} {I : CobordismInvariancePackage G P} (O : SurgeryObstructionPackage G P I) (E : SurgeryObstructionEvidence O) :
    SurgeryObstructionClosed O := E.obstructionClosed

end CobordismPlTopologyTheoremCanonicalLaneLean
end HautevilleHouse