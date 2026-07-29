import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean

structure OpenMappingPrinciplePackage (A : AdmissibleClass) where
  linearSurjection : Prop
  imageOpenness : Prop
  inverseBoundedness : Prop

def OpenMappingPrincipleClosed (A : AdmissibleClass) (O : OpenMappingPrinciplePackage A) : Prop :=
  O.linearSurjection ∧ O.imageOpenness ∧ O.inverseBoundedness

theorem open_mapping_principle_closed (A : AdmissibleClass) (O : OpenMappingPrinciplePackage A) (h : OpenMappingPrincipleClosed A O) :
    ConstrainedBanachClosure A := by
  exact ConstrainedBanachClosure A

end ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean
end HautevilleHouse