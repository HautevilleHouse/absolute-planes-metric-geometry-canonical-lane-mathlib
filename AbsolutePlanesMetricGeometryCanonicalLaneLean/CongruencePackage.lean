import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbsolutePlanesMetricGeometryCanonicalLaneLean.AngleSumPackage

namespace HautevilleHouse
namespace AbsolutePlanesMetricGeometryCanonicalLaneLean

structure CongruencePackage {A : AbsolutePlaneAdmissibleClass} {M : AbsolutePlaneModelPackage A} {P : ParallelPostulatePackage M} {S : AngleSumPackage P} where
  segmentCongruenceAxiom : Prop
  angleCongruenceAxiom : Prop
  sideAngleSide : Prop
  angleSideAngle : Prop
  sideSideSide : Prop

structure CongruenceEvidence {A : AbsolutePlaneAdmissibleClass} {M : AbsolutePlaneModelPackage A} {P : ParallelPostulatePackage M} {S : AngleSumPackage P} (C : CongruencePackage S) where
  segmentCongruenceAxiomClosed : C.segmentCongruenceAxiom
  angleCongruenceAxiomClosed : C.angleCongruenceAxiom
  sideAngleSideClosed : C.sideAngleSide
  angleSideAngleClosed : C.angleSideAngle
  sideSideSideClosed : C.sideSideSide

def CongruenceClosed {A : AbsolutePlaneAdmissibleClass} {M : AbsolutePlaneModelPackage A} {P : ParallelPostulatePackage M} {S : AngleSumPackage P} (C : CongruencePackage S) : Prop :=
  C.segmentCongruenceAxiom ∧ C.angleCongruenceAxiom ∧ C.sideAngleSide ∧ C.angleSideAngle ∧ C.sideSideSide

theorem congruence_closed_from_evidence {A : AbsolutePlaneAdmissibleClass} {M : AbsolutePlaneModelPackage A} {P : ParallelPostulatePackage M} {S : AngleSumPackage P} (C : CongruencePackage S) (E : CongruenceEvidence C) : CongruenceClosed C :=
  And.intro E.segmentCongruenceAxiomClosed (And.intro E.angleCongruenceAxiomClosed (And.intro E.sideAngleSideClosed (And.intro E.angleSideAngleClosed E.sideSideSideClosed)))

end AbsolutePlanesMetricGeometryCanonicalLaneLean
end HautevilleHouse