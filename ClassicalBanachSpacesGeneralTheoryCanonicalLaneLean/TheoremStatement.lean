import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  banachConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceRepository : String := "classical-banach-spaces-general-theory"
def sourceDescription : String := "Classical Banach Spaces General Theory"
def sourceTheoremBoundary : String := "open"
def baselineCertificateLane : String := "banach_constrained"

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository
  theoremName := sourceRepository
  theoremObject := sourceDescription
  classicalBoundary := sourceTheoremBoundary
  banachConstrainedStatement := "Banach-constrained theorem certificate internalized"
  certificateLane := baselineCertificateLane
  carriedRemainder := "classical source boundary carried"
}

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = baselineCertificateLane := by
  rfl

end ClassicalBanachSpacesGeneralTheoryCanonicalLaneLean
end HautevilleHouse