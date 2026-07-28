import HautevilleHouse.CalculusVectorFunctionsLemmaCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.CalculusVectorFunctionsLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CalculusVectorFunctionsLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  calculusVectorStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  {
    sourceKey := "CalculusVectorFunctionsLemmaCanonicalLane"
    theoremName := "Calculus Vector Functions Lemma"
    theoremObject := "If a vector function is differentiable at a point, then it is continuous at that point."
    classicalBoundary := "The classical analytic proof relies on epsilon-delta arguments."
    calculusVectorStatement := "Vf differentiable at a → Vf continuous at a"
    certificateLane := "manifold_constrained"
    carriedRemainder := "The formalization carries the epsilon-delta proof as an explicit remainder."
  }

theorem theorem_statement_internalized :
    sourceTheoremStatement.sourceKey = "CalculusVectorFunctionsLemmaCanonicalLane" := by
  rfl

end CalculusVectorFunctionsLemmaCanonicalLaneLean
end HautevilleHouse
