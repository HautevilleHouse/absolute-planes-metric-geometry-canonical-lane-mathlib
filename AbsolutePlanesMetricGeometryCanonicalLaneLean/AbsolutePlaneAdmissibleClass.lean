import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbsolutePlanesMetricGeometry

structure AbsolutePlane where
  Point : Type
  Line : Type
  incidence : Point → Line → Prop
  between : Point → Point → Point → Prop
  congruence : Point → Point → Point → Point → Prop
  incidenceAxioms : Prop
  betweenAxioms : Prop
  congruenceAxioms : Prop
  lineExistenceAndUniqueness : Prop

structure AdmissibleAbsolutePlane where
  plane : AbsolutePlane
  metric : Prop
  metricConsistent : Prop
  metricFromAxioms : Prop
  metricComplete : Prop
  gateWitness : metricConsistent ∨ metricComplete

structure AdmittedObject where
  plane : AbsolutePlane
  conclusion : plane.incidenceAxioms ∧ plane.betweenAxioms ∧ plane.congruenceAxioms ∧ plane.lineExistenceAndUniqueness

def admittedClosure (A : AdmittedObject) : Prop :=
  A.plane.incidenceAxioms ∧ A.plane.betweenAxioms ∧ A.plane.congruenceAxioms ∧ A.plane.lineExistenceAndUniqueness

end AbsolutePlanesMetricGeometry
end HautevilleHouse