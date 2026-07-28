import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusVectorFunctionsLemmaCanonicalLaneLean

structure GreensTheoremPackage {V : VectorFieldPackage}
    {D : DifferentialOperatorsPackage V}
    {I : IntegralTheoremsPackage {V := V} {D := D}} where
  regionPlanar : Prop
  boundaryOriented : Prop
  lineIntegralEquality : Prop
  doubleIntegralEquality : Prop
  circulationDensity : Prop

structure GreensTheoremEvidence {V : VectorFieldPackage}
    {D : DifferentialOperatorsPackage V}
    {I : IntegralTheoremsPackage {V := V} {D := D}}
    (G : GreensTheoremPackage {V := V} {D := D} {I := I}) where
  regionPlanarClosed : G.regionPlanar
  boundaryOrientedClosed : G.boundaryOriented
  lineIntegralEqualityClosed : G.lineIntegralEquality
  doubleIntegralEqualityClosed : G.doubleIntegralEquality
  circulationDensityClosed : G.circulationDensity

def GreensTheoremClosed {V : VectorFieldPackage}
    {D : DifferentialOperatorsPackage V}
    {I : IntegralTheoremsPackage {V := V} {D := D}}
    (G : GreensTheoremPackage {V := V} {D := D} {I := I}) : Prop :=
  G.regionPlanar ∧ G.boundaryOriented ∧ G.lineIntegralEquality ∧
  G.doubleIntegralEquality ∧ G.circulationDensity

theorem greens_theorem_closed_from_evidence
    {V : VectorFieldPackage} {D : DifferentialOperatorsPackage V}
    {I : IntegralTheoremsPackage {V := V} {D := D}}
    (G : GreensTheoremPackage {V := V} {D := D} {I := I})
    (E : GreensTheoremEvidence G) : GreensTheoremClosed G := by
  exact And.intro E.regionPlanarClosed
    (And.intro E.boundaryOrientedClosed
      (And.intro E.lineIntegralEqualityClosed
        (And.intro E.doubleIntegralEqualityClosed E.circulationDensityClosed)))

end CalculusVectorFunctionsLemmaCanonicalLaneLean
end HautevilleHouse