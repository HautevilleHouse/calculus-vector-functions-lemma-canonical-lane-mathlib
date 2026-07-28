import Mathlib.Topology.Basic

/-!
# Real Vector Space Package
-/

namespace HautevilleHouse
namespace CalculusVectorFunctionsLemmaCanonicalLaneLean

structure RealVectorSpacePackage where
  vectorSpaceType : Type u
  norm : vectorSpaceType → ℝ
  innerProduct : vectorSpaceType → vectorSpaceType → ℝ
  complete : Prop
  finiteDimensional : Prop

structure RealVectorSpaceEvidence (V : RealVectorSpacePackage) where
  completeClosed : V.complete
  finiteDimensionalClosed : V.finiteDimensional

def RealVectorSpaceClosed (V : RealVectorSpacePackage) : Prop :=
  V.complete ∧ V.finiteDimensional

theorem real_vector_space_closed_from_evidence (V : RealVectorSpacePackage)
    (E : RealVectorSpaceEvidence V) : RealVectorSpaceClosed V := by
  exact And.intro E.completeClosed E.finiteDimensionalClosed

end CalculusVectorFunctionsLemmaCanonicalLaneLean
end HautevilleHouse