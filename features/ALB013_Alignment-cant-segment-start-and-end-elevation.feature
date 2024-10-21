@implementer-agreement
@ALB
@version1
@E00020
Feature: ALB013 - Alignment cant segment start and end elevation
  The rule verifies the compliance of the start and end cant elevation of alignment cant segments 
  according to its predefined type.
  
  Background:
    Given A model with Schema "IFC4.3"
    Given An IfcAlignmentCant
    Given A relationship IfcRelNests from IfcAlignmentCant to IfcAlignmentSegment and following that
    Given Its attribute DesignParameters

  Scenario: Validating the compliance of start and end cant elevation in constant cant segments
    Given PredefinedType = 'CONSTANTCANT'
    Then The value of attribute <StartCantSide> must be equal to the expression: <EndCantSide>

    Examples:
      | StartCantSide  | EndCantSide  |
      | StartCantLeft  | EndCantLeft  |
      | StartCantRight | EndCantRight |
  
  Scenario: Validating the compliance of start and end cant elevation in non-constant cant segments
    Given PredefinedType != 'CONSTANTCANT'
    Then The value of attribute <StartCantSide> must be not equal to the expression: <EndCantSide>

    Examples:
      | StartCantSide  | EndCantSide  |
      | StartCantLeft  | EndCantLeft  |
      | StartCantRight | EndCantRight |
