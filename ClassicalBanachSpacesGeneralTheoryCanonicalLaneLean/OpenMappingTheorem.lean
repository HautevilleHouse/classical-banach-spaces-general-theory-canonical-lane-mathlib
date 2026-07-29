import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean

structure OpenMappingPackage where
  boundedLinearMap : Type u
  surjectivity : Prop
  openness : Prop
  conclusion : surjectivity → openness

structure OpenMappingEvidence (O : OpenMappingPackage) where
  surjectivityClosed : O.surjectivity
  opennessClosed : O.openness
  conclusionClosed : O.conclusion O.surjectivityClosed

def OpenMappingClosed (O : OpenMappingPackage) : Prop :=
  O.surjectivity ∧ O.openness

theorem open_mapping_closed_from_evidence (O : OpenMappingPackage)
    (E : OpenMappingEvidence O) : OpenMappingClosed O := by
  exact And.intro E.surjectivityClosed E.opennessClosed

end ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean
end HautevilleHouse