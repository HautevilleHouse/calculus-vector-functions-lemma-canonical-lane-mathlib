import CalculusVectorFunctionsLemmaCanonicalLaneLean.RealVectorSpacePackage

/-!
# Vector Function Calculus Package
-/

namespace HautevilleHouse
namespace CalculusVectorFunctionsLemmaCanonicalLaneLean

structure VectorFunctionCalculusPackage (V : RealVectorSpacePackage) where
  domain : Type u
  codomain : Type v
  function : domain → codomain
  continuous : Prop
  differentiable : Prop
  integrable : Prop
  lemmaStatement : Prop

structure VectorFunctionCalculusEvidence (V : RealVectorSpacePackage)
    (P : VectorFunctionCalculusPackage V) where
  continuousClosed : P.continuous
  differentiableClosed : P.differentiable
  integrableClosed : P.integrable
  lemmaStatementClosed : P.lemmaStatement

def VectorFunctionCalculusClosed (V : RealVectorSpacePackage)
    (P : VectorFunctionCalculusPackage V) : Prop :=
  P.continuous ∧ P.differentiable ∧ P.integrable ∧ P.lemmaStatement

theorem vector_function_calculus_closed_from_evidence
    (V : RealVectorSpacePackage) (P : VectorFunctionCalculusPackage V)
    (E : VectorFunctionCalculusEvidence V P) : VectorFunctionCalculusClosed V P := by
  exact And.intro E.continuousClosed
    (And.intro E.differentiableClosed
      (And.intro E.integrableClosed E.lemmaStatementClosed))

end CalculusVectorFunctionsLemmaCanonicalLaneLean
end HautevilleHouse