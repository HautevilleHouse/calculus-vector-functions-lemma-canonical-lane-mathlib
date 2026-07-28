import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusVectorFunctionsLemmaCanonicalLaneLean

structure ChainRulePackage {P : DifferentiableVectorFunctionPackage} where
  compositionDifferentiable : Prop
  derivativeComposition : Prop
  chainRuleFormula : Prop
  innerFunctionDerivative : Prop
  outerFunctionDerivative : Prop

structure ChainRuleEvidence {P : DifferentiableVectorFunctionPackage}
    (C : ChainRulePackage P) where
  compositionDifferentiableClosed : C.compositionDifferentiable
  derivativeCompositionClosed : C.derivativeComposition
  chainRuleFormulaClosed : C.chainRuleFormula
  innerFunctionDerivativeClosed : C.innerFunctionDerivative
  outerFunctionDerivativeClosed : C.outerFunctionDerivative

def ChainRuleClosed {P : DifferentiableVectorFunctionPackage}
    (C : ChainRulePackage P) : Prop :=
  C.compositionDifferentiable ∧ C.derivativeComposition ∧
  C.chainRuleFormula ∧ C.innerFunctionDerivative ∧ C.outerFunctionDerivative

theorem chain_rule_closed_from_evidence
    {P : DifferentiableVectorFunctionPackage}
    (C : ChainRulePackage P) (E : ChainRuleEvidence C) :
    ChainRuleClosed C := by
  exact And.intro E.compositionDifferentiableClosed
    (And.intro E.derivativeCompositionClosed
      (And.intro E.chainRuleFormulaClosed
        (And.intro E.innerFunctionDerivativeClosed E.outerFunctionDerivativeClosed)))

end CalculusVectorFunctionsLemmaCanonicalLaneLean
end HautevilleHouse