import HautevilleHouse.CalculusVectorFunctionsLemmaCanonicalLaneLean.DomainObjects

namespace HautevilleHouse
namespace CalculusVectorFunctionsLemmaCanonicalLaneLean

structure VectorFunctionLemmaStatement where
  vectorSpace : VectorFunctionSpace
  derivativeObject : DerivativeObject vectorSpace
  lemmaStatement : Prop
  lemmaProof : lemmaStatement

def VectorFunctionLemmaClosed (S : VectorFunctionLemmaStatement) : Prop :=
  S.lemmaStatement

theorem vectorFunctionLemmaClosed_from_evidence (S : VectorFunctionLemmaStatement) :
    VectorFunctionLemmaClosed S := by
  exact S.lemmaProof

end CalculusVectorFunctionsLemmaCanonicalLaneLean
end HautevilleHouse