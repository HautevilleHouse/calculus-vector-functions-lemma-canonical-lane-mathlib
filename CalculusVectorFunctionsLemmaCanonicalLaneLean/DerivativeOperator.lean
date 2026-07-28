import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusVectorFunctionsLemmaCanonicalLaneLean

structure DerivativeOperator (E : VectorFunctionSpace) where
  derivative : (E.domain → E.codomain) → (E.domain → LinearMap E.codomain E.codomain)
  linearity : Prop
  productRule : Prop
  chainRule : Prop

def DerivativeOperatorClosed {E : VectorFunctionSpace} (D : DerivativeOperator E) : Prop :=
  D.linearity ∧ D.productRule ∧ D.chainRule

end CalculusVectorFunctionsLemmaCanonicalLaneLean
end HautevilleHouse
