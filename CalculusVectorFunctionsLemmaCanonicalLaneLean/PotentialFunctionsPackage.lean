import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusVectorFunctionsLemmaCanonicalLaneLean

structure PotentialFunctionsPackage {V : VectorFieldPackage}
    {D : DifferentialOperatorsPackage V} where
  potentialFunctionExists : Prop
  pathIndependence : Prop
  gradOfPotential : Prop
  testForConservative : Prop
  uniqueUpToConstant : Prop

structure PotentialFunctionsEvidence {V : VectorFieldPackage}
    {D : DifferentialOperatorsPackage V}
    (P : PotentialFunctionsPackage {V := V} {D := D}) where
  potentialFunctionExistsClosed : P.potentialFunctionExists
  pathIndependenceClosed : P.pathIndependence
  gradOfPotentialClosed : P.gradOfPotential
  testForConservativeClosed : P.testForConservative
  uniqueUpToConstantClosed : P.uniqueUpToConstant

def PotentialFunctionsClosed {V : VectorFieldPackage}
    {D : DifferentialOperatorsPackage V}
    (P : PotentialFunctionsPackage {V := V} {D := D}) : Prop :=
  P.potentialFunctionExists ∧ P.pathIndependence ∧ P.gradOfPotential ∧
  P.testForConservative ∧ P.uniqueUpToConstant

theorem potential_functions_closed_from_evidence
    {V : VectorFieldPackage} {D : DifferentialOperatorsPackage V}
    (P : PotentialFunctionsPackage {V := V} {D := D})
    (E : PotentialFunctionsEvidence P) : PotentialFunctionsClosed P := by
  exact And.intro E.potentialFunctionExistsClosed
    (And.intro E.pathIndependenceClosed
      (And.intro E.gradOfPotentialClosed
        (And.intro E.testForConservativeClosed E.uniqueUpToConstantClosed)))

end CalculusVectorFunctionsLemmaCanonicalLaneLean
end HautevilleHouse