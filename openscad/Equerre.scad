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
/*
//taille du cube :
lo=51;//longueur
la=9;//largeur
hj=15;//hauteur
ep=2;//epaisseur paroi
difference()
{
	union()
	{
		difference()
		{
		translate([0,0,hj/2-2*ep])cube(size = [lo+10,la+6,ep], center = true);
		minkowski()
			{	
			cube(size = [lo-2ep,la-2ep,hj/2*2], center = true);
			sphere(ep);
			}//minkowski
		}//difference
	minkowski()
	{
		cube(size = [lo-ep,la-ep,hj/2-ep], center = true);
		sphere(ep);
	}//minkowski
	}//union
	minkowski()
	{
		translate([0,0,1])cube(size = [lo-ep,la-ep,hj/2-ep+ep/2], center = true);
		sphere(ep/2);
	}//minkowski
	//Percage des trous de fixation :
	translate([28,5,0])cylinder(h = 2*hj/2, r = 1.15, center = true);
	translate([28,-5,0])cylinder(h = 2*hj/2, r = 1.15, center = true);
	translate([-28,5,0])cylinder(h = 2*hj/2, r = 1.15, center = true);
	translate([-28,-5,0])cylinder(h = 2*hj/2, r = 1.15, center = true);
}//difference
*/

//taille de l'equerre :
lo=20;//longueur
la=10;//largeur
hj=10;//hauteur
ep=2;//epaisseur paroi
difference()
{
	union()
	{
	cube([lo,la,ep], center = true);
	translate([0,la/2-ep/2,hj/2-ep/2])cube([lo,ep,hj], center = true);
	}
	//Percage des trous de fixation :
	translate([6,-2,0])cylinder(h = hj/2, r = 1.15, center = true);
	translate([-6,-2,0])cylinder(h = hj/2, r = 1.15, center = true);
}//difference

translate([0,9.5,5])difference()//sangle
{
minkowski()
	{
		cube([50,9,2], center = true);
		sphere(1);
	}//minkowski
	cube([50,9,10], center = true);
}