import Mathlib.Analysis.Calculus.Deriv

namespace HautevilleHouse
namespace CalculusVectorFunctionsLemmaCanonicalLaneLean

structure VectorFunctionSpace where
  source : Type u
  target : Type v
  norm_source : NormedAddCommGroup source
  norm_target : NormedAddCommGroup target
  function : source → target

structure DerivativeObject (V : VectorFunctionSpace) where
  linearMap : V.source →L[ℝ] V.target
  derivativeAt : V.source → Prop
  continuousAt : V.source → Prop
  derivativeExistsAtAllPoints : Prop
  derivativeContinuousOnDomain : Prop

def DerivativeClosed {V : VectorFunctionSpace} (D : DerivativeObject V) : Prop :=
  D.derivativeExistsAtAllPoints ∧ D.derivativeContinuousOnDomain

end CalculusVectorFunctionsLemmaCanonicalLaneLean
end HautevilleHouse