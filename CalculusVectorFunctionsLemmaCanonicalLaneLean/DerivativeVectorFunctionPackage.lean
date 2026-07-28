import CalculusVectorFunctionsLemmaCanonicalLaneLean.VectorFunctionCalculusPackage

/-!
# Derivative Package for Vector Functions
-/

namespace HautevilleHouse
namespace CalculusVectorFunctionsLemmaCanonicalLaneLean

structure DerivativeVectorFunctionPackage (V : RealVectorSpacePackage)
    (P : VectorFunctionCalculusPackage V) where
  derivativeExists : Prop
  frechetDerivative : Type w
  chainRule : Prop
  directionalDerivative : Prop

structure DerivativeVectorFunctionEvidence (V : RealVectorSpacePackage)
    (P : VectorFunctionCalculusPackage V)
    (D : DerivativeVectorFunctionPackage V P) where
  derivativeExistsClosed : D.derivativeExists
  frechetDerivativeClosed : D.frechetDerivative
  chainRuleClosed : D.chainRule
  directionalDerivativeClosed : D.directionalDerivative

def DerivativeVectorFunctionClosed (V : RealVectorSpacePackage)
    (P : VectorFunctionCalculusPackage V)
    (D : DerivativeVectorFunctionPackage V P) : Prop :=
  D.derivativeExists ∧ D.frechetDerivative ∧ D.chainRule ∧ D.directionalDerivative

theorem derivative_vector_function_closed_from_evidence
    (V : RealVectorSpacePackage) (P : VectorFunctionCalculusPackage V)
    (D : DerivativeVectorFunctionPackage V P)
    (E : DerivativeVectorFunctionEvidence V P D) : DerivativeVectorFunctionClosed V P D := by
  exact And.intro E.derivativeExistsClosed
    (And.intro E.frechetDerivativeClosed
      (And.intro E.chainRuleClosed E.directionalDerivativeClosed))

end CalculusVectorFunctionsLemmaCanonicalLaneLean
end HautevilleHouse