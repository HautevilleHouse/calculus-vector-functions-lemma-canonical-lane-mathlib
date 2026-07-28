import HautevilleHouse.CalculusVectorFunctionsLemmaCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.CalculusVectorFunctionsLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CalculusVectorFunctionsLemmaCanonicalLaneLean

def ConstrainedVectorFunctionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_vector_function_endgame (A : AdmissibleClass) :
    ConstrainedVectorFunctionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CalculusVectorFunctionsLemmaCanonicalLaneLean
end HautevilleHouse