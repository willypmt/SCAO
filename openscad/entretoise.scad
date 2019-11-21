//Module Entretoise ronde
//Di est le diametre int
//De est le diametre ext
//lr est la longueur
//xt, yt, zt sont les coordonnées
$fn=100;//nombre de facettes
//module ent_R(Di,De, lr, xt, yt,zt)
//{
//translate([xt,yt,zt])
De=4;
Di=2.2;
lr=10;
difference()
	{
	rotate([0,0,0])cylinder(r=De/2,h=lr, center = true);
	rotate([0,0,0])cylinder(r=Di/2,h=lr+2, center = true);
	}
//}