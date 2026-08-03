import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbsolutePlanesMetricGeometryCanonicalLaneLean

structure AbsolutePlaneStructure where
  Point : Type u
  Line : Type v
  incidence : Point → Line → Prop
  between : Point → Point → Point → Prop
  segmentCongruence : Point → Point → Point → Point → Prop
  angleCongruence : (Point × Point × Point) → (Point × Point × Point) → Prop
  incidenceAxioms : Prop
  betweennessAxioms : Prop
  congruenceAxioms : Prop
  isAbsolutePlane : Prop
  incidenceAxiomsClosed : incidenceAxioms
  betweennessAxiomsClosed : betweennessAxioms
  congruenceAxiomsClosed : congruenceAxioms
  isAbsolutePlaneClosed : isAbsolutePlane

structure AbsolutePlaneEvidence (P : AbsolutePlaneStructure) where
  incidenceAxiomsClosed : P.incidenceAxioms
  betweennessAxiomsClosed : P.betweennessAxioms
  congruenceAxiomsClosed : P.congruenceAxioms
  isAbsolutePlaneClosed : P.isAbsolutePlane

def AbsolutePlaneWitnessClosed (P : AbsolutePlaneStructure) : Prop :=
  P.incidenceAxioms ∧ P.betweennessAxioms ∧ P.congruenceAxioms ∧ P.isAbsolutePlane

theorem absolute_plane_witness_closed_from_evidence (P : AbsolutePlaneStructure) (E : AbsolutePlaneEvidence P) : AbsolutePlaneWitnessClosed P := by
  exact And.intro E.incidenceAxiomsClosed (And.intro E.betweennessAxiomsClosed (And.intro E.congruenceAxiomsClosed E.isAbsolutePlaneClosed))

end AbsolutePlanesMetricGeometryCanonicalLaneLean
end HautevilleHouse