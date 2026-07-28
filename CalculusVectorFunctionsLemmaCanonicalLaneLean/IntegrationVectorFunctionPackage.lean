import CalculusVectorFunctionsLemmaCanonicalLaneLean.VectorFunctionCalculusPackage

/-!
# Integration Package for Vector Functions
-/

namespace HautevilleHouse
namespace CalculusVectorFunctionsLemmaCanonicalLaneLean

structure IntegrationVectorFunctionPackage (V : RealVectorSpacePackage)
    (P : VectorFunctionCalculusPackage V) where
  integralDefined : Prop
  fundamentalTheorem : Prop
  lineIntegral : Prop
  surfaceIntegral : Prop

structure IntegrationVectorFunctionEvidence (V : RealVectorSpacePackage)
    (P : VectorFunctionCalculusPackage V)
    (I : IntegrationVectorFunctionPackage V P) where
  integralDefinedClosed : I.integralDefined
  fundamentalTheoremClosed : I.fundamentalTheorem
  lineIntegralClosed : I.lineIntegral
  surfaceIntegralClosed : I.surfaceIntegral

def IntegrationVectorFunctionClosed (V : RealVectorSpacePackage)
    (P : VectorFunctionCalculusPackage V)
    (I : IntegrationVectorFunctionPackage V P) : Prop :=
  I.integralDefined ∧ I.fundamentalTheorem ∧ I.lineIntegral ∧ I.surfaceIntegral

theorem integration_vector_function_closed_from_evidence
    (V : RealVectorSpacePackage) (P : VectorFunctionCalculusPackage V)
    (I : IntegrationVectorFunctionPackage V P)
    (E : IntegrationVectorFunctionEvidence V P I) : IntegrationVectorFunctionClosed V P I := by
  exact And.intro E.integralDefinedClosed
    (And.intro E.fundamentalTheoremClosed
      (And.intro E.lineIntegralClosed E.surfaceIntegralClosed))

end CalculusVectorFunctionsLemmaCanonicalLaneLean
end HautevilleHouse