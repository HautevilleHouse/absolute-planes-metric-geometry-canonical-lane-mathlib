import AbsolutePlanesMetricGeometryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AbsolutePlanesMetricGeometryCanonicalLaneLean

structure PlaneGeometryPackage where
  plane : Type u
  metric : Type v
  absolutePlaneAxioms : Prop
  congruenceAxioms : Prop
  betweennessAxioms : Prop

def PlaneGeometryClosed (P : PlaneGeometryPackage) : Prop :=
  P.absolutePlaneAxioms ∧ P.congruenceAxioms ∧ P.betweennessAxioms

theorem plane_geometry_closed_from_package (P : PlaneGeometryPackage) : PlaneGeometryClosed P := by
  exact And.intro P.absolutePlaneAxioms (And.intro P.congruenceAxioms P.betweennessAxioms)

end AbsolutePlanesMetricGeometryCanonicalLaneLean
end HautevilleHouse