import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean

structure UniformBoundednessPackage where
  familyOfOperators : Type u
  pointwiseBounded : Prop
  uniformBounded : Prop
  conclusion : pointwiseBounded → uniformBounded

structure UniformBoundednessEvidence (U : UniformBoundednessPackage) where
  pointwiseBoundedClosed : U.pointwiseBounded
  uniformBoundedClosed : U.uniformBounded
  conclusionClosed : U.conclusion U.pointwiseBoundedClosed

def UniformBoundednessClosed (U : UniformBoundednessPackage) : Prop :=
  U.pointwiseBounded ∧ U.uniformBounded

theorem uniform_boundedness_closed_from_evidence (U : UniformBoundednessPackage)
    (E : UniformBoundednessEvidence U) : UniformBoundednessClosed U := by
  exact And.intro E.pointwiseBoundedClosed E.uniformBoundedClosed

end ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean
end HautevilleHouse