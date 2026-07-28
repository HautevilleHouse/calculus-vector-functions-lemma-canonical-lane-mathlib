import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CalculusVectorFunctionsLemmaCanonicalLaneLean.VectorFunctionObjects

namespace HautevilleHouse
namespace CalculusVectorFunctionsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  VectorFunctionWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CalculusVectorFunctionsLemmaCanonicalLaneLean
end HautevilleHouse