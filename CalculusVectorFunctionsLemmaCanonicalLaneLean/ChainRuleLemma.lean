import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusVectorFunctionsLemmaCanonicalLaneLean

structure ChainRulePackage (E F : VectorFunctionSpace) (Df : DerivativeOperator E) (Dg : DerivativeOperator F) where
  f : E.domain → E.codomain
  g : F.domain → F.codomain
  compositionLaw : Prop
  derivativeOfComposition : Prop
  chainRuleHolds : Prop

def ChainRuleClosed {E F : VectorFunctionSpace} {Df : DerivativeOperator E} {Dg : DerivativeOperator F}
    (CR : ChainRulePackage E F Df Dg) : Prop :=
  CR.chainRuleHolds

end CalculusVectorFunctionsLemmaCanonicalLaneLean
end HautevilleHouse
