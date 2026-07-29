import ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean

structure HahnBanachPackage (A : AdmissibleClass) where
  subspace : Subspace (A.object.space)
  boundedFunctional : (subspace → ℝ) → A.object.space → ℝ
  extensionProperty : Prop
  normPreservation : Prop

structure HahnBanachEvidence {A : AdmissibleClass} (H : HahnBanachPackage A) where
  extensionPropertyClosed : H.extensionProperty
  normPreservationClosed : H.normPreservation

def HahnBanachClosed {A : AdmissibleClass} (H : HahnBanachPackage A) : Prop :=
  H.extensionProperty ∧ H.normPreservation

theorem hahn_banach_closed_from_evidence {A : AdmissibleClass} (H : HahnBanachPackage A) (E : HahnBanachEvidence H) :
    HahnBanachClosed H := by
  exact And.intro E.extensionPropertyClosed E.normPreservationClosed

end ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean
end HautevilleHouse
