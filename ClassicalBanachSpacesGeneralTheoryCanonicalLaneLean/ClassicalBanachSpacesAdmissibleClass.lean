import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean

structure ClassicalBanachSpace where
  carrier : Type
  norm : carrier → ℝ
  normedAddCommGroup : NormedAddCommGroup carrier
  complete : CompleteSpace carrier
  
structure BanachAdmittedObject where
  space : ClassicalBanachSpace
  property : Prop
  conclusion : property

structure AdmissibleClass where
  object : BanachAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BanachWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean
end HautevilleHouse
