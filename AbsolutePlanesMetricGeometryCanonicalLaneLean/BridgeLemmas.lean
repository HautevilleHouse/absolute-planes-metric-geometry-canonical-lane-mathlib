import HautevilleHouse.AbsolutePlanesMetricGeometryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AbsolutePlanesMetricGeometryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AbsolutePlaneWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.isAbsolutePlaneClosed

end AbsolutePlanesMetricGeometryCanonicalLaneLean
end HautevilleHouse