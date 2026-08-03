import AbsolutePlanesMetricGeometry.GeodesicDecomposition

namespace HautevilleHouse
namespace AbsolutePlanesMetricGeometry

structure ParallelPostulateClassificationPackage where
  isEuclidean : Prop
  isHyperbolic : Prop
  classificationComplete : Prop

def ParallelPostulateClassificationClosed (P : ParallelPostulateClassificationPackage) : Prop :=
  P.classificationComplete ∧ (P.isEuclidean ∨ P.isHyperbolic)

theorem parallel_postulate_classification_closed (P : ParallelPostulateClassificationPackage) (h : P.classificationComplete ∧ (P.isEuclidean ∨ P.isHyperbolic)) : ParallelPostulateClassificationClosed P := by
  exact h

end AbsolutePlanesMetricGeometry
end HautevilleHouse