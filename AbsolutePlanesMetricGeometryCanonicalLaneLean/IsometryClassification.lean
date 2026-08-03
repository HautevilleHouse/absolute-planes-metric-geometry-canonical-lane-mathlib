import AbsolutePlanesMetricGeometryCanonicalLaneLean.PlaneGeometryPackage

namespace HautevilleHouse
namespace AbsolutePlanesMetricGeometryCanonicalLaneLean

structure IsometryClassificationPackage {P : PlaneGeometryPackage} where
  isometryGroup : Type u
  classificationProp : Prop
  classificationProof : classificationProp

def IsometryClassificationClosed {P : PlaneGeometryPackage} (I : IsometryClassificationPackage P) : Prop :=
  I.classificationProp

theorem isometry_classification_closed {P : PlaneGeometryPackage} (I : IsometryClassificationPackage P) :
    IsometryClassificationClosed I := by
  exact I.classificationProof

end AbsolutePlanesMetricGeometryCanonicalLaneLean
end HautevilleHouse