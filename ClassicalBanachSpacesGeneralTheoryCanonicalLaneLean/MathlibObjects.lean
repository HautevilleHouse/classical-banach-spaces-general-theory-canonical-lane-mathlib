import ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Analysis.NormedSpace.Banach

namespace HautevilleHouse
namespace ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BanachSpace where
  carrier : Type
  norm : carrier → ℝ
  normedSpace : NormedAddCommGroup carrier
  banachSpace : CompleteSpace carrier

structure BanachAdmittedObject where
  space : BanachSpace
  dualSpace : Type
  dualNorm : dualSpace → ℝ
  conclusion : Prop

def BanachWitnessClosed (O : BanachAdmittedObject) : Prop :=
  O.conclusion

end ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean
end HautevilleHouse