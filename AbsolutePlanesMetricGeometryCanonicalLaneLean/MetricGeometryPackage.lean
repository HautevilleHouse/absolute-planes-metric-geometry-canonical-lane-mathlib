import AbsolutePlanesMetricGeometryCanonicalLaneLean.AbsolutePlaneBasics

namespace HautevilleHouse
namespace AbsolutePlanesMetricGeometryCanonicalLaneLean

structure MetricGeometryPackage (P : AbsolutePlane) where
  geodesicExistence : ∀ x y : P.Point, ∃ (γ : ℝ → P.Point), γ 0 = x ∧ γ 1 = y ∧ ∀ s t : ℝ, P.metric (γ s) (γ t) = |s - t| * P.metric x y
  convexity : ∀ x y z : P.Point, P.between x y z → ∀ t : ℝ, t ∈ Set.Icc (0 : ℝ) 1 → P.between x (geodesic x y t) (geodesic x z t)
  geodesicExistenceTerm : geodesicExistence
  convexityTerm : convexity

structure MetricGeometryEvidence {P : AbsolutePlane} (M : MetricGeometryPackage P) where
  geodesicExistenceClosed : M.geodesicExistence
  convexityClosed : M.convexity

def MetricGeometryClosed {P : AbsolutePlane} (M : MetricGeometryPackage P) : Prop :=
  M.geodesicExistence ∧ M.convexity

theorem metric_geometry_closed_from_evidence {P : AbsolutePlane} (M : MetricGeometryPackage P) (E : MetricGeometryEvidence M) : MetricGeometryClosed M := by
  exact And.intro E.geodesicExistenceClosed E.convexityClosed

end AbsolutePlanesMetricGeometryCanonicalLaneLean
end HautevilleHouse