import ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean.DualSpaceTheory

namespace HautevilleHouse
namespace ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean

structure WeakTopologyPackage (X : BanachAdmittedObject) where
  weakTopology : Type u
  weakConvergenceCondition : Prop
  banachAlaogluTheorem : Prop
  weakClosednessOfBalls : Prop

def WeakTopologyClosed (X : BanachAdmittedObject) (P : WeakTopologyPackage X) : Prop :=
  P.weakConvergenceCondition ∧ P.banachAlaogluTheorem ∧ P.weakClosednessOfBalls

structure WeakTopologyEvidence (X : BanachAdmittedObject) (P : WeakTopologyPackage X) where
  weakConvergenceConditionClosed : P.weakConvergenceCondition
  banachAlaogluTheoremClosed : P.banachAlaogluTheorem
  weakClosednessOfBallsClosed : P.weakClosednessOfBalls

theorem weak_topology_closed_from_evidence (X : BanachAdmittedObject) (P : WeakTopologyPackage X)
    (E : WeakTopologyEvidence X P) : WeakTopologyClosed X P := by
  exact And.intro E.weakConvergenceConditionClosed
    (And.intro E.banachAlaogluTheoremClosed E.weakClosednessOfBallsClosed)

end ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean
end HautevilleHouse