import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusVectorFunctionsLemmaCanonicalLaneLean

structure VectorFunctionAdmittedObject where
  domain : Type u
  codomain : Type v
  function : domain → codomain
  differentiable : Prop
  conclusion : differentiable

structure VectorFunctionSpace where
  domain : Type u
  codomain : Type v
  functions : Set (domain → codomain)
  closureUnderAddition : Prop
  closureUnderScalarMul : Prop
  containsZero : Prop

def FunctionWitnessClosed (O : VectorFunctionAdmittedObject) : Prop :=
  O.differentiable

end CalculusVectorFunctionsLemmaCanonicalLaneLean
end HautevilleHouse
