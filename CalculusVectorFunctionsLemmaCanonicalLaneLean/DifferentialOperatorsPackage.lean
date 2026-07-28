import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusVectorFunctionsLemmaCanonicalLaneLean

structure DifferentialOperatorsPackage (V : VectorFieldPackage) where
  gradientDefined : Prop
  divergenceDefined : Prop
  curlDefined : Prop
  laplacianDefined : Prop
  identitiesHold : Prop

structure DifferentialOperatorsEvidence {V : VectorFieldPackage}
    (D : DifferentialOperatorsPackage V) where
  gradientDefinedClosed : D.gradientDefined
  divergenceDefinedClosed : D.divergenceDefined
  curlDefinedClosed : D.curlDefined
  laplacianDefinedClosed : D.laplacianDefined
  identitiesHoldClosed : D.identitiesHold

def DifferentialOperatorsClosed {V : VectorFieldPackage}
    (D : DifferentialOperatorsPackage V) : Prop :=
  D.gradientDefined ∧ D.divergenceDefined ∧ D.curlDefined ∧
  D.laplacianDefined ∧ D.identitiesHold

theorem differential_operators_closed_from_evidence
    {V : VectorFieldPackage} (D : DifferentialOperatorsPackage V)
    (E : DifferentialOperatorsEvidence D) : DifferentialOperatorsClosed D := by
  exact And.intro E.gradientDefinedClosed
    (And.intro E.divergenceDefinedClosed
      (And.intro E.curlDefinedClosed
        (And.intro E.laplacianDefinedClosed E.identitiesHoldClosed)))

end CalculusVectorFunctionsLemmaCanonicalLaneLean
end HautevilleHouse