//include <dim1.scad>
$fn=100;
color([206/255,206/255,206/255]) rotate_extrude(angle = 360, convexity = 2) {import(file = "../LibreCAD/couvercle.dxf", layer = "extrusion");};
