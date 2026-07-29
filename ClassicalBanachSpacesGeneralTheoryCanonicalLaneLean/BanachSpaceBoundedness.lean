import ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean.BanachSpaceAdmissibleClass

namespace HautevilleHouse
namespace ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean

structure BoundedLinearOperatorPackage (X Y : BanachAdmittedObject) where
  operator : X.space → Y.space
  linearity : Prop
  continuity : Prop
  normBound : ℝ
  normBoundPos : normBound > 0

def BoundedLinearOperatorClosed {X Y : BanachAdmittedObject} (P : BoundedLinearOperatorPackage X Y) : Prop :=
  P.linearity ∧ P.continuity

structure BoundednessEvidence {X Y : BanachAdmittedObject} (P : BoundedLinearOperatorPackage X Y) where
  linearityClosed : P.linearity
  continuityClosed : P.continuity

theorem boundedness_closed_from_evidence {X Y : BanachAdmittedObject} (P : BoundedLinearOperatorPackage X Y)
    (E : BoundednessEvidence P) : BoundedLinearOperatorClosed P := by
  exact And.intro E.linearityClosed E.continuityClosed

end ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean
end HautevilleHouse