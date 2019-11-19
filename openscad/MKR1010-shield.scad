//Unité : pouce
$fn=100;//nombre de facettes
//Définition des couleurs
orange=[233/255, 93/255, 15/255];
vert=[151/255, 191/255, 13/255];
gris=[112/255, 113/255, 115/255];
noir=[0/255, 0/255, 0/255];
bleu=[51/255, 51/255, 255/255];
blanc=[255/255, 255/255, 255/255];
rouge=[255/255, 0/255, 0/255];
translate([0,0,1.5])shield();
module shield() 
{
difference() 
{
color(orange)linear_extrude(height = 0.05, center = true, convexity = 10, scale = 1.0) {import(file = "../LibreCAD/MKR1010-shield.dxf", layer = "shield2");}
linear_extrude(height = 0.06, center = true, convexity = 10, scale = 1.0) {import(file = "../LibreCAD/MKR1010-shield.dxf", layer = "trous-fixation");}//trous vis M2
linear_extrude(height = 0.06, center = true, convexity = 10, scale = 1.0) {import(file = "../LibreCAD/MKR1010-shield.dxf", layer = "trous-vis");}//trous vis M3
//translate([22/25.4,-19/25.4,0])rotate([90,0,0])scale([1/25.4,1/25.4,1/25.4])cube([75,29,9],center=true);//trou batterie
//translate([0,-(50+14.5)/25.4,0])scale([1/25.4,1/25.4,1/25.4])cube(100,center=true);//découpe shield 2.7x3.4
}

//Connecteurs
translate([0,0,0.215])color(noir)linear_extrude(height = 0.37, center = true, convexity = 10, scale = 1.0) {import(file = "../LibreCAD/MKR1010-shield.dxf", layer = "connecteur");}
translate([0,0,0.185])linear_extrude(height = 0.44, center = true, convexity = 10, scale = 1.0) {import(file = "../LibreCAD/MKR1010-shield.dxf", layer = "trous");}

//Batterie ()
//color(rouge)translate([0,-0.1,0.165])linear_extrude(height = 0.28, center = true, convexity = 10, scale = 1.0) {import(file = "../LibreCAD/MKR1010-shield.dxf", layer = "bat");}
//color(rouge)translate([0,-1.35,0.165])cube([1.94,1.14,0.28],center=true);
color(rouge)translate([9.7/25.4,-18.6/25.4,5/25.4])rotate([90,0,0])scale([1/25.4,1/25.4,1/25.4])cube([50,29,8],center=true);//position verticale

//Capteur de température (7)
//scale([1/25.4,1/25.4,1/25.4])translate([-18,-18,2])rotate([90,90,90]){import("capteur.stl");}
} //module

