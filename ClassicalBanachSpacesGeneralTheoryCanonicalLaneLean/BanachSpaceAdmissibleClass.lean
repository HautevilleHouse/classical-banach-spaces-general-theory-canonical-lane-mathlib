import ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean

structure AdmissibleClass where
  object : BanachAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BanachWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean
end HautevilleHouse