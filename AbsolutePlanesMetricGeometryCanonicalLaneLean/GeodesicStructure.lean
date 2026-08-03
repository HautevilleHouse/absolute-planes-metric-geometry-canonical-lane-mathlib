import AbsolutePlanesMetricGeometryCanonicalLaneLean.PlaneGeometryPackage

namespace HautevilleHouse
namespace AbsolutePlanesMetricGeometryCanonicalLaneLean

structure GeodesicStructurePackage {P : PlaneGeometryPackage} where
  geodesicExistence : Prop
  uniquenessOfGeodesics : Prop
  geodesicCompleteness : Prop

def GeodesicStructureClosed {P : PlaneGeometryPackage} (G : GeodesicStructurePackage P) : Prop :=
  G.geodesicExistence ∧ G.uniquenessOfGeodesics ∧ G.geodesicCompleteness

theorem geodesic_structure_closed {P : PlaneGeometryPackage} (G : GeodesicStructurePackage P) :
    GeodesicStructureClosed G := by
  exact And.intro G.geodesicExistence (And.intro G.uniquenessOfGeodesics G.geodesicCompleteness)

end AbsolutePlanesMetricGeometryCanonicalLaneLean
end HautevilleHouse