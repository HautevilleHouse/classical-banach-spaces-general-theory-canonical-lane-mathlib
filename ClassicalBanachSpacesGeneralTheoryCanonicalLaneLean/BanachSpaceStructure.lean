import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean

structure BanachSpacePackage where
  carrier : Type u
  norm : carrier → ℝ
  scalarMultiplication : ℝ → carrier → carrier
  vectorAddition : carrier → carrier → carrier
  zeroElement : carrier
  normedVectorSpaceAxioms : Prop
  completenessAxiom : Prop
  normedVectorSpaceAxiomsClosed : normedVectorSpaceAxioms
  completenessAxiomClosed : completenessAxiom

structure BanachSpaceEvidence (B : BanachSpacePackage) where
  normedVectorSpaceAxiomsClosed : B.normedVectorSpaceAxioms
  completenessAxiomClosed : B.completenessAxiom

def BanachSpaceClosed (B : BanachSpacePackage) : Prop :=
  B.normedVectorSpaceAxioms ∧ B.completenessAxiom

theorem banach_space_closed_from_evidence (B : BanachSpacePackage)
    (E : BanachSpaceEvidence B) : BanachSpaceClosed B := by
  exact And.intro E.normedVectorSpaceAxiomsClosed E.completenessAxiomClosed

end ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean
end HautevilleHouse