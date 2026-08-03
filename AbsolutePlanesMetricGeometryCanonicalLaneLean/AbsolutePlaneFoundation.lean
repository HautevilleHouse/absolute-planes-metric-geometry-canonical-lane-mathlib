import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace AbsolutePlanesMetricGeometryCanonicalLaneLean

structure AbsolutePlane where
  Point : Type
  distance : Point → Point → ℝ
  distance_nonneg : ∀ x y, 0 ≤ distance x y
  distance_symm : ∀ x y, distance x y = distance y x
  triangle_inequality : ∀ x y z, distance x z ≤ distance x y + distance y z
  metric_space : MetricSpace Point :=
    MetricSpace.mk' distance distance_nonneg distance_symm triangle_inequality

structure AbsolutePlaneAdmittedObject where
  plane : AbsolutePlane
  satisfies_parallel_postulate : Prop
  conclusion : satisfies_parallel_postulate

structure AdmissibleClass where
  object : AbsolutePlaneAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end AbsolutePlanesMetricGeometryCanonicalLaneLean
end HautevilleHouse