import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusVectorFunctionsLemmaCanonicalLaneLean

structure IntegralTheoremsPackage {V : VectorFieldPackage}
    {D : DifferentialOperatorsPackage V} where
  greensTheorem : Prop
  stokesTheorem : Prop
  divergenceTheorem : Prop
  fundamentalTheoremLineIntegrals : Prop
  boundaryConditions : Prop

structure IntegralTheoremsEvidence {V : VectorFieldPackage}
    {D : DifferentialOperatorsPackage V}
    (I : IntegralTheoremsPackage {V := V} {D := D}) where
  greensTheoremClosed : I.greensTheorem
  stokesTheoremClosed : I.stokesTheorem
  divergenceTheoremClosed : I.divergenceTheorem
  fundamentalTheoremLineIntegralsClosed : I.fundamentalTheoremLineIntegrals
  boundaryConditionsClosed : I.boundaryConditions

def IntegralTheoremsClosed {V : VectorFieldPackage}
    {D : DifferentialOperatorsPackage V}
    (I : IntegralTheoremsPackage {V := V} {D := D}) : Prop :=
  I.greensTheorem ∧ I.stokesTheorem ∧ I.divergenceTheorem ∧
  I.fundamentalTheoremLineIntegrals ∧ I.boundaryConditions

theorem integral_theorems_closed_from_evidence
    {V : VectorFieldPackage} {D : DifferentialOperatorsPackage V}
    (I : IntegralTheoremsPackage {V := V} {D := D})
    (E : IntegralTheoremsEvidence I) : IntegralTheoremsClosed I := by
  exact And.intro E.greensTheoremClosed
    (And.intro E.stokesTheoremClosed
      (And.intro E.divergenceTheoremClosed
        (And.intro E.fundamentalTheoremLineIntegralsClosed
          E.boundaryConditionsClosed)))

end CalculusVectorFunctionsLemmaCanonicalLaneLean
end HautevilleHouse