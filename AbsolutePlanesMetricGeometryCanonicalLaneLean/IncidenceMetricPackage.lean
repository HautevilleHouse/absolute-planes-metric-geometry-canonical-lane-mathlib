import AbsolutePlanesMetricGeometry.AbsolutePlaneAxioms

namespace HautevilleHouse
namespace AbsolutePlanesMetricGeometry

structure IncidenceMetricPackage where
  distance : AbsolutePlane.Point → AbsolutePlane.Point → ℝ
  metricAxioms : Prop
  incidenceCompatible : Prop
  geodesicExistence : Prop

def IncidenceMetricClosed (P : IncidenceMetricPackage) : Prop :=
  P.metricAxioms ∧ P.incidenceCompatible ∧ P.geodesicExistence

theorem incidence_metric_closed (P : IncidenceMetricPackage) (h : P.metricAxioms ∧ P.incidenceCompatible ∧ P.geodesicExistence) : IncidenceMetricClosed P := by
  exact h

end AbsolutePlanesMetricGeometry
end HautevilleHouse