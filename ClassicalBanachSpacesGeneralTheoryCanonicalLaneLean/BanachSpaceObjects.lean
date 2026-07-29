import ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean

structure BanachSpaceObject where
  space : ClassicalBanachSpace
  isomorphicToDual : Prop
  reflexive : Prop

def BanachWitnessClosed (O : BanachAdmittedObject) : Prop :=
  O.property

end ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean
end HautevilleHouse
