import canonicalLaneMathlib.AdmissibleClass
import ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean.BanachSpaceStructure

namespace HautevilleHouse
namespace ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean

structure BanachAlgebraPackage (B : BanachSpacePackage) where
  multiplication : B.carrier → B.carrier → B.carrier
  submultiplicativity : Prop
  unital : Prop
  submultiplicativityClosed : submultiplicativity
  unitalClosed : unital

structure BanachAlgebraEvidence {B : BanachSpacePackage}
    (A : BanachAlgebraPackage B) where
  submultiplicativityClosed : A.submultiplicativity
  unitalClosed : A.unital

def BanachAlgebraClosed {B : BanachSpacePackage}
    (A : BanachAlgebraPackage B) : Prop :=
  A.submultiplicativity ∧ A.unital

theorem banach_algebra_closed_from_evidence {B : BanachSpacePackage}
    (A : BanachAlgebraPackage B) (E : BanachAlgebraEvidence A) :
    BanachAlgebraClosed A := by
  exact And.intro E.submultiplicativityClosed E.unitalClosed

end ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean
end HautevilleHouse