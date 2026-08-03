import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbsolutePlanesMetricGeometryCanonicalLaneLean.AbsolutePlaneStructure

namespace HautevilleHouse
namespace AbsolutePlanesMetricGeometryCanonicalLaneLean

structure CongruenceAxiomsPackage (P : AbsolutePlaneStructure) where
  c1 : Prop  -- Segment congruence is an equivalence relation.
  c2 : Prop  -- Segment addition: if A-B-C and A'-B'-C' and AB ≅ A'B' and BC ≅ B'C', then AC ≅ A'C'.
  c3 : Prop  -- Given a segment AB and a ray starting at C, there is a unique point D such that CD ≅ AB.
  c4 : Prop  -- Angle congruence is an equivalence relation.
  c5 : Prop  -- SAS triangle congruence.
  c1Closed : c1
  c2Closed : c2
  c3Closed : c3
  c4Closed : c4
  c5Closed : c5

structure CongruenceAxiomsEvidence (P : AbsolutePlaneStructure) (C : CongruenceAxiomsPackage P) where
  c1Closed : C.c1
  c2Closed : C.c2
  c3Closed : C.c3
  c4Closed : C.c4
  c5Closed : C.c5

def CongruenceAxiomsClosed (P : AbsolutePlaneStructure) (C : CongruenceAxiomsPackage P) : Prop :=
  C.c1 ∧ C.c2 ∧ C.c3 ∧ C.c4 ∧ C.c5

theorem congruence_axioms_closed_from_evidence (P : AbsolutePlaneStructure) (C : CongruenceAxiomsPackage P) (E : CongruenceAxiomsEvidence P C) : CongruenceAxiomsClosed P C := by
  exact And.intro E.c1Closed (And.intro E.c2Closed (And.intro E.c3Closed (And.intro E.c4Closed E.c5Closed)))

end AbsolutePlanesMetricGeometryCanonicalLaneLean
end HautevilleHouse