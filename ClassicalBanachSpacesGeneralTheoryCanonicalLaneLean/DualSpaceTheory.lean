import ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean.BanachSpaceBoundedness

namespace HautevilleHouse
namespace ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean

structure DualSpacePackage (X : BanachAdmittedObject) where
  dual : BanachAdmittedObject
  evaluation : X.space → dual.dualSpace → 𝕜 -- assume field 𝕜
  isometricEmbedding : Prop
  reflexivityCondition : Prop

def DualSpaceClosed (X : BanachAdmittedObject) (P : DualSpacePackage X) : Prop :=
  P.isometricEmbedding ∧ P.reflexivityCondition

structure DualSpaceEvidence (X : BanachAdmittedObject) (P : DualSpacePackage X) where
  isometricEmbeddingClosed : P.isometricEmbedding
  reflexivityConditionClosed : P.reflexivityCondition

theorem dual_space_closed_from_evidence (X : BanachAdmittedObject) (P : DualSpacePackage X)
    (E : DualSpaceEvidence X P) : DualSpaceClosed X P := by
  exact And.intro E.isometricEmbeddingClosed E.reflexivityConditionClosed

end ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean
end HautevilleHouse