import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusVectorFunctionsLemmaCanonicalLaneLean

structure ImplicitFunctionPackage (E F : VectorFunctionSpace) (Df : DerivativeOperator E) (Dg : DerivativeOperator F) where
  mapping : E.domain × F.domain → E.codomain
  regularValue : Prop
  implicitFunction : E.domain → F.domain
  implicitDifferentiable : Prop
  conclusion : implicitDifferentiable

def ImplicitFunctionClosed {E F : VectorFunctionSpace} {Df : DerivativeOperator E} {Dg : DerivativeOperator F}
    (IF : ImplicitFunctionPackage E F Df Dg) : Prop :=
  IF.implicitDifferentiable

end CalculusVectorFunctionsLemmaCanonicalLaneLean
end HautevilleHouse
