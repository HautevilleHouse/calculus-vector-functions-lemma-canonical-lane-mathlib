import HautevilleHouse.CalculusVectorFunctionsLemmaCanonicalLaneLean.DerivativeEvidenceTerms

namespace HautevilleHouse
namespace CalculusVectorFunctionsLemmaCanonicalLaneLean

structure VectorFunctionProofCertificate {V : VectorFunctionSpace} (D : DerivativeObject V) where
  linearMapDefined : Prop
  derivativeExistsProved : D.derivativeExistsAtAllPoints
  derivativeContinuousProved : D.derivativeContinuousOnDomain
  proofClosed : DerivativeClosed D

def VectorFunctionProofCertificateClosed {V : VectorFunctionSpace} {D : DerivativeObject V} (C : VectorFunctionProofCertificate D) : Prop :=
  C.linearMapDefined ∧ C.derivativeExistsProved ∧ C.derivativeContinuousProved ∧ DerivativeClosed D

theorem vectorFunctionProofCertificate_closed {V : VectorFunctionSpace} {D : DerivativeObject V} (C : VectorFunctionProofCertificate D) :
    VectorFunctionProofCertificateClosed C := by
  exact And.intro C.linearMapDefined (And.intro C.derivativeExistsProved (And.intro C.derivativeContinuousProved C.proofClosed))

end CalculusVectorFunctionsLemmaCanonicalLaneLean
end HautevilleHouse