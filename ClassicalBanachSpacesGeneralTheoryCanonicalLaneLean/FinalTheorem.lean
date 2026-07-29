import ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean

def ConstrainedBanachClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_banach_endgame (A : AdmissibleClass) :
    ConstrainedBanachClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean
end HautevilleHouse
