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

//translate([0,0,0])color(vert){import("jupe_wifi.stl");}

vert=([151/255, 191/255, 13/255]);
$fn=120;
include <dim1.scad>
hj=25;//hauteur

difference()
{
	minkowski()
	{
		cube(size = [80,50,hj/2], center = true);
		cylinder(h = hj/2, r = 2*e, center = true);
	}//minkowski
	translate([0,0,-e])minkowski()
	{
		cube(size = [80,50,hj/2], center = true);
		cylinder(h = hj/2, r = e, center = true);
	}//minkowski
	//Percage des trous de fixation :
	translate([L2/2,l2/2,hj/2])cylinder(h = hj/2, r = r, center = true);
	translate([-L2/2,-l2/2,hj/2])cylinder(h = hj/2, r = r, center = true);
	translate([-L2/2,l2/2,hj/2])cylinder(h = hj/2, r = r, center = true);
	translate([L2/2,-l2/2,hj/2])cylinder(h = hj/2, r = r, center = true);
	translate([-L2/2,0,hj/2])cylinder(h = hj/2, r = r, center = true);
	//Percage du trou central
	translate([0,0,hj/2])cylinder(h = hj/2, r = 3.5*r, center = true);
}//difference