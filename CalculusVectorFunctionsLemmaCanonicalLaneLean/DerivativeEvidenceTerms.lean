import HautevilleHouse.CalculusVectorFunctionsLemmaCanonicalLaneLean.DomainObjects

namespace HautevilleHouse
namespace CalculusVectorFunctionsLemmaCanonicalLaneLean

structure DerivativeEvidenceTerms {V : VectorFunctionSpace} (D : DerivativeObject V) where
  derivativeExistsAllPoints : D.derivativeExistsAtAllPoints
  derivativeContinuousDomain : D.derivativeContinuousOnDomain
  derivativeClosed : DerivativeClosed D

def DerivativeObject.evidenceTerms {V : VectorFunctionSpace} (D : DerivativeObject V) : DerivativeEvidenceTerms D :=
  {
    derivativeExistsAllPoints := D.derivativeExistsAtAllPoints
    derivativeContinuousDomain := D.derivativeContinuousOnDomain
    derivativeClosed := And.intro D.derivativeExistsAtAllPoints D.derivativeContinuousOnDomain
  }

end CalculusVectorFunctionsLemmaCanonicalLaneLean
end HautevilleHouse