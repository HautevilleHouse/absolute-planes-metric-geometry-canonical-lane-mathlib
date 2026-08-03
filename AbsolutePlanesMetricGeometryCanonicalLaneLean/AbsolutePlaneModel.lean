import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbsolutePlanesMetricGeometryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AbsolutePlanesMetricGeometryCanonicalLaneLean

structure AbsolutePlaneModelPackage (A : AbsolutePlaneAdmissibleClass) where
  points : Type u
  lines : Type v
  distanceAxiom : Prop
  angleAxiom : Prop
  incidenceAxiom : Prop
  betweennessAxiom : Prop
  congruenceAxiom : Prop
  metricGeometryEvidence : distanceAxiom ∧ angleAxiom ∧ incidenceAxiom ∧ betweennessAxiom ∧ congruenceAxiom

structure AbsolutePlaneModelEvidence {A : AbsolutePlaneAdmissibleClass} (M : AbsolutePlaneModelPackage A) where
  distanceAxiomClosed : M.distanceAxiom
  angleAxiomClosed : M.angleAxiom
  incidenceAxiomClosed : M.incidenceAxiom
  betweennessAxiomClosed : M.betweennessAxiom
  congruenceAxiomClosed : M.congruenceAxiom

def AbsolutePlaneModelClosed {A : AbsolutePlaneAdmissibleClass} (M : AbsolutePlaneModelPackage A) : Prop :=
  M.distanceAxiom ∧ M.angleAxiom ∧ M.incidenceAxiom ∧ M.betweennessAxiom ∧ M.congruenceAxiom

theorem absolute_plane_model_closed_from_evidence {A : AbsolutePlaneAdmissibleClass} (M : AbsolutePlaneModelPackage A) (E : AbsolutePlaneModelEvidence M) : AbsolutePlaneModelClosed M :=
  And.intro E.distanceAxiomClosed (And.intro E.angleAxiomClosed (And.intro E.incidenceAxiomClosed (And.intro E.betweennessAxiomClosed E.congruenceAxiomClosed)))

end AbsolutePlanesMetricGeometryCanonicalLaneLean
end HautevilleHouse