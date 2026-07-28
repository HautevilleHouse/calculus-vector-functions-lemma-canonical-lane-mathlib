import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusVectorFunctionsLemmaCanonicalLaneLean

structure DifferentiableVectorFunctionPackage where
  domain : Type u
  codomain : Type v
  normDomain : NormedAddCommGroup domain
  normCodomain : NormedAddCommGroup codomain
  function : domain → codomain
  derivativeAtEachPoint : Prop
  derivativeContinuous : Prop
  linearApproximation : Prop
  frechetDerivativeExists : Prop

structure DifferentiableVectorFunctionEvidence (P : DifferentiableVectorFunctionPackage) where
  derivativeAtEachPointClosed : P.derivativeAtEachPoint
  derivativeContinuousClosed : P.derivativeContinuous
  linearApproximationClosed : P.linearApproximation
  frechetDerivativeExistsClosed : P.frechetDerivativeExists

def DifferentiableVectorFunctionClosed (P : DifferentiableVectorFunctionPackage) : Prop :=
  P.derivativeAtEachPoint ∧ P.derivativeContinuous ∧
  P.linearApproximation ∧ P.frechetDerivativeExists

theorem differentiable_vector_function_closed_from_evidence
    (P : DifferentiableVectorFunctionPackage)
    (E : DifferentiableVectorFunctionEvidence P) :
    DifferentiableVectorFunctionClosed P := by
  exact And.intro E.derivativeAtEachPointClosed
    (And.intro E.derivativeContinuousClosed
      (And.intro E.linearApproximationClosed E.frechetDerivativeExistsClosed))

end CalculusVectorFunctionsLemmaCanonicalLaneLean
end HautevilleHouse