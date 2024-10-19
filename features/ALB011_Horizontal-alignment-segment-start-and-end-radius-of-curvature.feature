@implementer-agreement
@ALB
@version1
@E00020

# for PredefinedType = LINE, StartRadiusOfCurvature and EndRadiusOfCurvature must = 0.
# for PredefinedType = CIRCULAR ARC, StartRadiusOfCurvature must = EndRadiusOfCurvature and both must != 0.
# for all other PredefinedType(s), StartRadiusOfCurvature must != EndRadiusOfCurvature

Feature: ALB011 - Horizontal Alignment Segment Start and End Radius of Curvature
  The rule verifies the compliance of the start and end radius of curvature of alignment horizontal segments 
  according to its predefined type.
  
  Background:
    Given A model with Schema "IFC4.3"
    Given An IfcAlignmentHorizontal
    Given A relationship IfcRelNests from IfcAlignmentHorizontal to IfcAlignmentSegment and following that
    Given Its attribute DesignParameters

  Scenario Outline: Validating the absence of radius of curvature for linear horizontal alignment segments
    Given PredefinedType = 'LINE'
    Then The value of attribute <RadiusOfCurvature> must be equal to the expression: 0

    Examples:
      | RadiusOfCurvature      |
      | StartRadiusOfCurvature |
      | EndRadiusOfCurvature   |

  Scenario Outline: Validating that both the start and end radii of curvature for circular arc horizontal alignment segments are non-zero
    Given PredefinedType = 'CIRCULARARC'
    Then The value of attribute <RadiusOfCurvature> must be not equal to the expression: 0

        Examples:
      | RadiusOfCurvature      |
      | StartRadiusOfCurvature |
      | EndRadiusOfCurvature   |

  Scenario: Validating equality of start and end radii of curvature for circular arc horizontal alignment segments
    Given PredefinedType = 'CIRCULARARC'
    Then The value of attribute StartRadiusOfCurvature must be equal to the expression: EndRadiusOfCurvature

  Scenario: Validating that the start and end radii of curvature are not equal for non-linear or non-circular arc horizontal alignment segments
    Given PredefinedType != 'LINE' or 'CIRCULARARC'
    Then The value of attribute StartRadiusOfCurvature must be not equal to the expression: EndRadiusOfCurvature
    
