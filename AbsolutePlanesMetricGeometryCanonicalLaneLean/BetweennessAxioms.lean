import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbsolutePlanesMetricGeometryCanonicalLaneLean.AbsolutePlaneStructure

namespace HautevilleHouse
namespace AbsolutePlanesMetricGeometryCanonicalLaneLean

structure BetweennessAxiomsPackage (P : AbsolutePlaneStructure) where
  b1 : Prop  -- If B is between A and C, then A, B, C are distinct and B is between C and A.
  b2 : Prop  -- For any two distinct points A and B, there exists a point C such that B is between A and C.
  b3 : Prop  -- Among any three points on a line, exactly one is between the other two.
  b4 : Prop  -- Pasch's axiom
  b1Closed : b1
  b2Closed : b2
  b3Closed : b3
  b4Closed : b4

structure BetweennessAxiomsEvidence (P : AbsolutePlaneStructure) (B : BetweennessAxiomsPackage P) where
  b1Closed : B.b1
  b2Closed : B.b2
  b3Closed : B.b3
  b4Closed : B.b4

def BetweennessAxiomsClosed (P : AbsolutePlaneStructure) (B : BetweennessAxiomsPackage P) : Prop :=
  B.b1 ∧ B.b2 ∧ B.b3 ∧ B.b4

theorem betweenness_axioms_closed_from_evidence (P : AbsolutePlaneStructure) (B : BetweennessAxiomsPackage P) (E : BetweennessAxiomsEvidence P B) : BetweennessAxiomsClosed P B := by
  exact And.intro E.b1Closed (And.intro E.b2Closed (And.intro E.b3Closed E.b4Closed))

end AbsolutePlanesMetricGeometryCanonicalLaneLean
end HautevilleHouse