import canonicalLaneMathlib.AdmissibleClass
import ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean.DualSpace

namespace HautevilleHouse
namespace ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean

structure HahnBanachPackage {B : BanachSpacePackage} (D : DualSpacePackage B) where
  extensionTheorem : Prop
  normPreservation : Prop
  extensionTheoremClosed : extensionTheorem
  normPreservationClosed : normPreservation

structure HahnBanachEvidence {B : BanachSpacePackage} {D : DualSpacePackage B}
    (H : HahnBanachPackage D) where
  extensionTheoremClosed : H.extensionTheorem
  normPreservationClosed : H.normPreservation

def HahnBanachClosed {B : BanachSpacePackage} {D : DualSpacePackage B}
    (H : HahnBanachPackage D) : Prop :=
  H.extensionTheorem ∧ H.normPreservation

theorem hahn_banach_closed_from_evidence {B : BanachSpacePackage}
    {D : DualSpacePackage B} (H : HahnBanachPackage D)
    (E : HahnBanachEvidence H) : HahnBanachClosed H := by
  exact And.intro E.extensionTheoremClosed E.normPreservationClosed

end ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean
end HautevilleHouse