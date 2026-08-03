import AbsolutePlanesMetricGeometry.AbsolutePlaneAdmissibleClass

namespace HautevilleHouse
namespace AbsolutePlanesMetricGeometry

structure AbsolutePlaneAxiomsPackage where
  incidenceAxioms : Prop
  betweenAxioms : Prop
  congruenceAxioms : Prop
  lineExistenceAndUniqueness : Prop
  axiomsConsistent : Prop

def AbsolutePlaneAxiomsClosed (P : AbsolutePlaneAxiomsPackage) : Prop :=
  P.incidenceAxioms ∧ P.betweenAxioms ∧ P.congruenceAxioms ∧ P.lineExistenceAndUniqueness ∧ P.axiomsConsistent

theorem absolute_plane_axioms_closed (P : AbsolutePlaneAxiomsPackage) (h : P.axiomsConsistent) : AbsolutePlaneAxiomsClosed P := by
  exact And.intro P.incidenceAxioms (And.intro P.betweenAxioms (And.intro P.congruenceAxioms (And.intro P.lineExistenceAndUniqueness h)))

end AbsolutePlanesMetricGeometry
end HautevilleHouse