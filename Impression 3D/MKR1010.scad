//Unité : pouce
$fn=100;//nombre de facettes
//Définition des couleurs
orange=[233/255, 93/255, 15/255];
vert=[151/255, 191/255, 13/255];
gris=[112/255, 113/255, 115/255];
noir=[0/255, 0/255, 0/255];
bleu=[51/255, 51/255, 255/255];
blanc=[255/255, 255/255, 255/255];
MKR();
dec=-0.035;
//module MKR() {
difference()
{
	union()
	{
		color(vert)linear_extrude(height = 0.05, center = true, convexity = 10, scale = 1.0) {import(file = "../LibreCAD/MKR1010.dxf", layer = "0");}
		translate([0.04,0,0.065])color( gris)linear_extrude(height = 0.08, center = true, convexity = 10, scale = 1.0) {import(file = "../LibreCAD/MKR1010.dxf", layer = "usb");}
	}
	translate([dec,0,-0.01])color(noir)linear_extrude(height = 0.37, center = true, convexity = 10, scale = 1.0) {import(file = "../LibreCAD/MKR1010.dxf", layer = "connecteur");}
}