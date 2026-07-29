import canonicalLaneMathlib.AdmissibleClass
import ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean.BanachSpaceStructure

namespace HautevilleHouse
namespace ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean

structure DualSpacePackage (B : BanachSpacePackage) where
  dualCarrier : Type u
  dualNorm : dualCarrier → ℝ
  linearFunctionalSpace : Prop
  operatorNormDefined : Prop
  completenessOfDual : Prop
  linearFunctionalSpaceClosed : linearFunctionalSpace
  operatorNormDefinedClosed : operatorNormDefined
  completenessOfDualClosed : completenessOfDual

structure DualSpaceEvidence {B : BanachSpacePackage} (D : DualSpacePackage B) where
  linearFunctionalSpaceClosed : D.linearFunctionalSpace
  operatorNormDefinedClosed : D.operatorNormDefined
  completenessOfDualClosed : D.completenessOfDual

def DualSpaceClosed {B : BanachSpacePackage} (D : DualSpacePackage B) : Prop :=
  D.linearFunctionalSpace ∧ D.operatorNormDefined ∧ D.completenessOfDual

theorem dual_space_closed_from_evidence {B : BanachSpacePackage}
    (D : DualSpacePackage B) (E : DualSpaceEvidence D) : DualSpaceClosed D := by
  exact And.intro E.linearFunctionalSpaceClosed
    (And.intro E.operatorNormDefinedClosed E.completenessOfDualClosed)

end ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean
end HautevilleHouse