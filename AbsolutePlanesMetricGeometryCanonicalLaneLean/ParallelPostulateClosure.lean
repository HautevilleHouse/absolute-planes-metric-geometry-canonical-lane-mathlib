import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbsolutePlanesMetricGeometryCanonicalLaneLean.AbsolutePlaneModel

namespace HautevilleHouse
namespace AbsolutePlanesMetricGeometryCanonicalLaneLean

structure ParallelPostulatePackage {A : AbsolutePlaneAdmissibleClass} {M : AbsolutePlaneModelPackage A} where
  euclideanParallelPostulate : Prop
  hyperbolicParallelPostulate : Prop
  parallelDecidable : Prop
  parallelUniqueness : Prop
  parallelAlternative : Prop

structure ParallelPostulateEvidence {A : AbsolutePlaneAdmissibleClass} {M : AbsolutePlaneModelPackage A} (P : ParallelPostulatePackage M) where
  euclideanParallelPostulateClosed : P.euclideanParallelPostulate
  hyperbolicParallelPostulateClosed : P.hyperbolicParallelPostulate
  parallelDecidableClosed : P.parallelDecidable
  parallelUniquenessClosed : P.parallelUniqueness
  parallelAlternativeClosed : P.parallelAlternative

def ParallelPostulateClosed {A : AbsolutePlaneAdmissibleClass} {M : AbsolutePlaneModelPackage A} (P : ParallelPostulatePackage M) : Prop :=
  P.euclideanParallelPostulate ∧ P.hyperbolicParallelPostulate ∧ P.parallelDecidable ∧ P.parallelUniqueness ∧ P.parallelAlternative

theorem parallel_postulate_closed_from_evidence {A : AbsolutePlaneAdmissibleClass} {M : AbsolutePlaneModelPackage A} (P : ParallelPostulatePackage M) (E : ParallelPostulateEvidence P) : ParallelPostulateClosed P :=
  And.intro E.euclideanParallelPostulateClosed (And.intro E.hyperbolicParallelPostulateClosed (And.intro E.parallelDecidableClosed (And.intro E.parallelUniquenessClosed E.parallelAlternativeClosed)))

end AbsolutePlanesMetricGeometryCanonicalLaneLean
end HautevilleHouse