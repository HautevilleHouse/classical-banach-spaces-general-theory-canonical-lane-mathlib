import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean

structure ClosedGraphPackage where
  linearMap : Type u
  graphClosed : Prop
  continuity : Prop
  conclusion : graphClosed → continuity

structure ClosedGraphEvidence (C : ClosedGraphPackage) where
  graphClosedClosed : C.graphClosed
  continuityClosed : C.continuity
  conclusionClosed : C.conclusion C.graphClosedClosed

def ClosedGraphClosed (C : ClosedGraphPackage) : Prop :=
  C.graphClosed ∧ C.continuity

theorem closed_graph_closed_from_evidence (C : ClosedGraphPackage)
    (E : ClosedGraphEvidence C) : ClosedGraphClosed C := by
  exact And.intro E.graphClosedClosed E.continuityClosed

end ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean
end HautevilleHouse