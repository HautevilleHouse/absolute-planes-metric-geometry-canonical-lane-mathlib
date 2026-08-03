import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbsolutePlanesMetricGeometryCanonicalLaneLean

structure AdmissibleClass where
  object : AbsolutePlaneStructure
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AbsolutePlaneWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AbsolutePlanesMetricGeometryCanonicalLaneLean
end HautevilleHouse