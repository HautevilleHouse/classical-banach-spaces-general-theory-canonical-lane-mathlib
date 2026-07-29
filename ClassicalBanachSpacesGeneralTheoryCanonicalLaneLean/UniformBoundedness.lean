import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean

structure UniformBoundednessPackage (A : AdmissibleClass) where
  pointwiseBoundedFamily : Prop
  uniformBoundExistence : Prop
  normEstimate : Prop

def UniformBoundednessClosed (A : AdmissibleClass) (U : UniformBoundednessPackage A) : Prop :=
  U.pointwiseBoundedFamily ∧ U.uniformBoundExistence ∧ U.normEstimate

theorem uniform_boundedness_closed (A : AdmissibleClass) (U : UniformBoundednessPackage A) (h : UniformBoundednessClosed A U) :
    ConstrainedBanachClosure A := by
  exact ConstrainedBanachClosure A

end ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean
end HautevilleHouse