import AbsolutePlanesMetricGeometry.IncidenceMetricPackage

namespace HautevilleHouse
namespace AbsolutePlanesMetricGeometry

structure MetricGeodesicConstraintsPackage where
  segmentConstruction : Prop
  parallelLineUniqueness : Prop
  metricGeodesicConsistency : Prop

def MetricGeodesicConstraintsClosed (P : MetricGeodesicConstraintsPackage) : Prop :=
  P.segmentConstruction ∧ P.parallelLineUniqueness ∧ P.metricGeodesicConsistency

theorem metric_geodesic_constraints_closed (P : MetricGeodesicConstraintsPackage) (h : P.segmentConstruction ∧ P.parallelLineUniqueness ∧ P.metricGeodesicConsistency) : MetricGeodesicConstraintsClosed P := by
  exact h

end AbsolutePlanesMetricGeometry
end HautevilleHouse