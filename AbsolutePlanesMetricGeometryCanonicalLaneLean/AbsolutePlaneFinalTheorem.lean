import AbsolutePlanesMetricGeometry.BridgeLemmas
import AbsolutePlanesMetricGeometry.GateLemmas

namespace HautevilleHouse
namespace AbsolutePlanesMetricGeometry

def ConstrainedAbsolutePlaneClosure (A : AdmissibleAbsolutePlane) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_absolute_plane_endgame (A : AdmissibleAbsolutePlane) : ConstrainedAbsolutePlaneClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AbsolutePlanesMetricGeometry
end HautevilleHouse