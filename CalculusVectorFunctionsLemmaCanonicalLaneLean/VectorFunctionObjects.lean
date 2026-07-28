import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalculusVectorFunctionsLemmaCanonicalLaneLean

open Real

structure VectorFunctionSpace where
  carrier : Type u
  norm : NormedAddCommGroup carrier

structure VectorFunctionAdmittedObject where
  source : VectorFunctionSpace
  target : VectorFunctionSpace
  func : source.carrier → target.carrier
  point : source.carrier
  differentiableAt : Prop
  continuousAt : Prop
  conclusion : differentiableAt → continuousAt

def VectorFunctionWitnessClosed (O : VectorFunctionAdmittedObject) : Prop :=
  O.conclusion

end CalculusVectorFunctionsLemmaCanonicalLaneLean
end HautevilleHouse