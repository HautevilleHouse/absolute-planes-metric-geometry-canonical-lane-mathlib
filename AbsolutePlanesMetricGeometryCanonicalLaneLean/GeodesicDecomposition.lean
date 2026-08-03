import AbsolutePlanesMetricGeometry.MetricGeodesicConstraints

namespace HautevilleHouse
namespace AbsolutePlanesMetricGeometry

structure GeodesicDecompositionPackage where
  geodesicClosure : Prop
  triangleInequalityEquivalent : Prop
  decompositionConsistent : Prop

def GeodesicDecompositionClosed (P : GeodesicDecompositionPackage) : Prop :=
  P.geodesicClosure ∧ P.triangleInequalityEquivalent ∧ P.decompositionConsistent

theorem geodesic_decomposition_closed (P : GeodesicDecompositionPackage) (h : P.geodesicClosure ∧ P.triangleInequalityEquivalent ∧ P.decompositionConsistent) : GeodesicDecompositionClosed P := by
  exact h

end AbsolutePlanesMetricGeometry
end HautevilleHouse