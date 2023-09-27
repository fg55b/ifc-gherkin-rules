| File name                                                   | Expected result   | Error                                                                                                                                                                                  | Description   |
|:------------------------------------------------------------|:------------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:--------------|
| fail-als007-sectioned-solid-horizontal-wrong-type.ifc       | fail              | ['On instance #20011=IfcShapeRepresenta...,(#79)) the following invalid value for RepresentationType has been found: Curve2D']                                                         |               |
| pass-als007-sectioned-solid-horizontal.ifc                  | pass              | Rules passed                                                                                                                                                                           |               |
| fail-als007-sectioned-solid-horizontal-wrong-identifier.ifc | fail              | ['On instance #20011=IfcShapeRepresenta...,(#79)) the following invalid value for RepresentationIdentifier has been found: FootPrint']                                                 |               |
| fail-als007-sectioned-solid-horizontal-wrong-item.ifc       | fail              | ["The instance #20011=IfcShapeRepresentation(#1001,'Axis','Curve3D',(#54)) expected type 'IfcGradientCurve' for the attribute Items, but found [#54=IfcCompositeCurve((#...),.U.)]  "] |               |