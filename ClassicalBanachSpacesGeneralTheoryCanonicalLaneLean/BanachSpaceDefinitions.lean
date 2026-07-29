import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean

structure BanachSpace where
  carrier : Type u
  norm : carrier → ℝ
  norm_nonneg : ∀ x : carrier, 0 ≤ norm x
  norm_eq_zero_iff : ∀ x : carrier, norm x = 0 ↔ x = 0
  norm_triangle : ∀ x y : carrier, norm (x + y) ≤ norm x + norm y
  norm_smul : ∀ (α : ℝ) (x : carrier), norm (α • x) = |α| * norm x
  complete : Prop

structure BanachAdmittedObject where
  space : BanachSpace
  dualSpace : BanachSpace
  bidualEmbedding : Prop
  reflexivity : Prop
  conclusion : reflexivity → bidualEmbedding

end ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean
end HautevilleHouse