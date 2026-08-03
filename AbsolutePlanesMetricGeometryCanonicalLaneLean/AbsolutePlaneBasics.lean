import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbsolutePlanesMetricGeometryCanonicalLaneLean

structure AbsolutePlane where
  Point : Type u
  between : Point → Point → Point → Prop
  metric : Point → Point → ℝ
  nonneg : ∀ x y, 0 ≤ metric x y
  symm : ∀ x y, metric x y = metric y x
  triangle : ∀ x y z, metric x z ≤ metric x y + metric y z
  betweenness_metric : ∀ x y z, between x y z → metric x z = metric x y + metric y z
  unique_geodesic : ∀ x y, ∃! z, between x z y

structure AbsolutePlaneAdmittedObject where
  space : AbsolutePlane
  isComplete : Prop
  hasUniqueGeodesics : Prop
  conclusion : hasUniqueGeodesics

def AbsolutePlaneWitnessClosed (O : AbsolutePlaneAdmittedObject) : Prop :=
  O.conclusion

end AbsolutePlanesMetricGeometryCanonicalLaneLean
end HautevilleHouse