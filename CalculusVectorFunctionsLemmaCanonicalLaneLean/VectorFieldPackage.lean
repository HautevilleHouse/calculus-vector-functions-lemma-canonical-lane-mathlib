import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusVectorFunctionsLemmaCanonicalLaneLean

structure VectorFieldPackage where
  domain : Type u
  vectorFieldType : domain → Type v
  smoothness : Prop
  derivativeFamily : Prop
  conservative : Prop

structure VectorFieldEvidence (V : VectorFieldPackage) where
  smoothnessClosed : V.smoothness
  derivativeFamilyClosed : V.derivativeFamily
  conservativeClosed : V.conservative

def VectorFieldClosed (V : VectorFieldPackage) : Prop :=
  V.smoothness ∧ V.derivativeFamily ∧ V.conservative

theorem vector_field_closed_from_evidence
    (V : VectorFieldPackage) (E : VectorFieldEvidence V) : VectorFieldClosed V := by
  exact And.intro E.smoothnessClosed (And.intro E.derivativeFamilyClosed E.conservativeClosed)

end CalculusVectorFunctionsLemmaCanonicalLaneLean
end HautevilleHouse