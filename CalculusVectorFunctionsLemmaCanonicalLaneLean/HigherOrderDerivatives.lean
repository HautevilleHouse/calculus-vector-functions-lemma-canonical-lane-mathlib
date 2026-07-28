import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusVectorFunctionsLemmaCanonicalLaneLean

structure HigherOrderDerivativesPackage {P : DifferentiableVectorFunctionPackage} where
  secondDerivativeExists : Prop
  higherDerivativesExist : Nat → Prop
  smoothnessClass : Prop
  taylorExpansion : Prop
  remainderBound : Prop

structure HigherOrderDerivativesEvidence {P : DifferentiableVectorFunctionPackage}
    (H : HigherOrderDerivativesPackage P) where
  secondDerivativeExistsClosed : H.secondDerivativeExists
  higherDerivativesExistClosed : ∀ n, H.higherDerivativesExist n
  smoothnessClassClosed : H.smoothnessClass
  taylorExpansionClosed : H.taylorExpansion
  remainderBoundClosed : H.remainderBound

def HigherOrderDerivativesClosed {P : DifferentiableVectorFunctionPackage}
    (H : HigherOrderDerivativesPackage P) : Prop :=
  H.secondDerivativeExists ∧ (∀ n, H.higherDerivativesExist n) ∧
  H.smoothnessClass ∧ H.taylorExpansion ∧ H.remainderBound

theorem higher_order_derivatives_closed_from_evidence
    {P : DifferentiableVectorFunctionPackage}
    (H : HigherOrderDerivativesPackage P)
    (E : HigherOrderDerivativesEvidence H) :
    HigherOrderDerivativesClosed H := by
  exact And.intro E.secondDerivativeExistsClosed
    (And.intro E.higherDerivativesExistClosed
      (And.intro E.smoothnessClassClosed
        (And.intro E.taylorExpansionClosed E.remainderBoundClosed)))

end CalculusVectorFunctionsLemmaCanonicalLaneLean
end HautevilleHouse