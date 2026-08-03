import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbsolutePlanesMetricGeometryCanonicalLaneLean.AbsolutePlaneFoundation

namespace HautevilleHouse
namespace AbsolutePlanesMetricGeometryCanonicalLaneLean

structure ParallelPostulateEvidence (A : AdmissibleClass) where
  parallel_postulate_holds : A.object.satisfies_parallel_postulate
  endpoint_closed : A.endpointSatisfied := True
  remainder_closed : A.remainderRecorded := True

def AbsolutePlaneClosed (A : AdmissibleClass) : Prop :=
  A.object.satisfies_parallel_postulate

theorem absolute_plane_closed_from_evidence (A : AdmissibleClass) (E : ParallelPostulateEvidence A) : AbsolutePlaneClosed A :=
  E.parallel_postulate_holds

theorem parallel_postulate_evidence_supplies_bridge (A : AdmissibleClass) (E : ParallelPostulateEvidence A) : bridgeClosed A :=
  bridge_from_admissible_class A

theorem parallel_postulate_evidence_supplies_gate (A : AdmissibleClass) (E : ParallelPostulateEvidence A) : gateClosed A :=
  gate_from_admissible_class A

end AbsolutePlanesMetricGeometryCanonicalLaneLean
end HautevilleHouse