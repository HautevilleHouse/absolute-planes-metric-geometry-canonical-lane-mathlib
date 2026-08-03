import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbsolutePlanesMetricGeometryCanonicalLaneLean.ParallelPostulateClosure

namespace HautevilleHouse
namespace AbsolutePlanesMetricGeometryCanonicalLaneLean

structure AngleSumPackage {A : AbsolutePlaneAdmissibleClass} {M : AbsolutePlaneModelPackage A} {P : ParallelPostulatePackage M} where
  triangleAngleSum : Prop
  defectPositive : Prop
  saccheriLegendreTheorem : Prop
  angleSumTwoRight : Prop
  angleSumLessThanTwoRight : Prop

structure AngleSumEvidence {A : AbsolutePlaneAdmissibleClass} {M : AbsolutePlaneModelPackage A} {P : ParallelPostulatePackage M} (S : AngleSumPackage P) where
  triangleAngleSumClosed : S.triangleAngleSum
  defectPositiveClosed : S.defectPositive
  saccheriLegendreTheoremClosed : S.saccheriLegendreTheorem
  angleSumTwoRightClosed : S.angleSumTwoRight
  angleSumLessThanTwoRightClosed : S.angleSumLessThanTwoRight

def AngleSumClosed {A : AbsolutePlaneAdmissibleClass} {M : AbsolutePlaneModelPackage A} {P : ParallelPostulatePackage M} (S : AngleSumPackage P) : Prop :=
  S.triangleAngleSum ∧ S.defectPositive ∧ S.saccheriLegendreTheorem ∧ S.angleSumTwoRight ∧ S.angleSumLessThanTwoRight

theorem angle_sum_closed_from_evidence {A : AbsolutePlaneAdmissibleClass} {M : AbsolutePlaneModelPackage A} {P : ParallelPostulatePackage M} (S : AngleSumPackage P) (E : AngleSumEvidence S) : AngleSumClosed S :=
  And.intro E.triangleAngleSumClosed (And.intro E.defectPositiveClosed (And.intro E.saccheriLegendreTheoremClosed (And.intro E.angleSumTwoRightClosed E.angleSumLessThanTwoRightClosed)))

end AbsolutePlanesMetricGeometryCanonicalLaneLean
end HautevilleHouse