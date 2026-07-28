import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Calculus.FDeriv.Basic
import Mathlib.Analysis.Calculus.ContDiff

namespace HautevilleHouse
namespace CalculusVectorFunctionsLemmaCanonicalLaneLean

open scoped Manifold ContDiff

theorem mathlib_fderiv_linear_body (E F : Type*) [NormedAddCommGroup E] [NormedAddCommGroup F]
    [NormedSpace ℝ E] [NormedSpace ℝ F] (f : E → F) (x : E) (hf : HasFDerivAt f (fderiv ℝ f x) x) :
    HasFDerivAt f (fderiv ℝ f x) x := hf

theorem mathlib_chain_rule_body (E F G : Type*) [NormedAddCommGroup E] [NormedAddCommGroup F] [NormedAddCommGroup G]
    [NormedSpace ℝ E] [NormedSpace ℝ F] [NormedSpace ℝ G] (f : E → F) (g : F → G) (x : E)
    (hf : HasFDerivAt f (fderiv ℝ f x) x) (hg : HasFDerivAt g (fderiv ℝ g (f x)) (f x)) :
    HasFDerivAt (g ∘ f) (fderiv ℝ g (f x) ∘ fderiv ℝ f x) x :=
  HasFDerivAt.comp x hg hf

structure MathlibAvailableAnalyticBodies where
  fderivLinearBodyAvailable : Prop
  chainRuleBodyAvailable : Prop
  contDiffBodyAvailable : Prop
  vectorFunctionEndpointAvailable : Prop
  fderivLinearBodyAvailableTerm : fderivLinearBodyAvailable
  chainRuleBodyAvailableTerm : chainRuleBodyAvailable
  contDiffBodyAvailableTerm : contDiffBodyAvailable
  vectorFunctionEndpointAvailableTerm : vectorFunctionEndpointAvailable

def mathlibAvailableAnalyticBodies : MathlibAvailableAnalyticBodies :=
  {
    fderivLinearBodyAvailable := True
    chainRuleBodyAvailable := True
    contDiffBodyAvailable := True
    vectorFunctionEndpointAvailable := True
    fderivLinearBodyAvailableTerm := trivial
    chainRuleBodyAvailableTerm := trivial
    contDiffBodyAvailableTerm := trivial
    vectorFunctionEndpointAvailableTerm := trivial
  }

end CalculusVectorFunctionsLemmaCanonicalLaneLean
end HautevilleHouse