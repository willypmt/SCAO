//Ce programme permet la représentation de l'assemblage des différentes pièces de la e-p-433-v2.
//La représentation est réalisable selon un mode statique ou animé.
//En mode statique la représentation est réelle.
//En mode animé la représentation évolue progressivement entre une représentation réelle et une représentation éclatée qui permet d'apercevoir le détail des différentes pièces.
//The $t variable is used for animation. If you enable the animation frame with view->animate and give a value for "FPS" and "Steps", the "Time" field shows the current value of $t.
//Pour obtenir le mode statique Temps=t FPS=0 Etapes=0 avec t=0 (sans éclaté) t=1 (éclaté)
include <dim1.scad>
include <z_f.scad>//Ce fichier contient pour zn deux séries de valeurs, celles dédiées à une représentation réelle (non éclatée) et celles dédiées à une représentation éclatée. La variable $t évoquée ci-dessus permet l'évolution progressive entre les 2 valeurs en créant ainsi une animation.
$fn=100;//nombre de facettes
use <visserie.scad> //Modules écrou, entretoise hexagonale, rondelle et vis
use <MKR1010.scad>
use <MKR1010-shield.scad>
use <ent-fixation.scad>
use <jupe_wifi.scad>
//Définition des couleurs
orange=[233/255, 93/255, 15/255];
vert=[151/255, 191/255, 13/255];
gris=[112/255, 113/255, 115/255];
noir=[0/255, 0/255, 0/255];
bleu=[51/255, 51/255, 255/255];
//Pour mettre en rotation rotate([0,0,$t*90])
translate([20,0,0])rotate([0,0,0])
{
//Assemblage des pièces de la e-p-433-v2
//couvercle (21) sous l'entretoise en alu
translate([0,0,z21+$t*(z21_e-z21)])color( [190/255, 190/255, 190/255]){import("Couvercle.stl");}
//Jupe (8)
#translate([0,0,z8+$t*(z8_e-z8)])color(vert){import("jupe_wifi.stl");}
//Capot ()
*translate([0,0,25])rotate([180,0,0])color(vert){import("Capot.stl");}
//entretoises M3 (9) 4 entretoises sur l'isolateur (2 avec tige)
color( gris)ent_M(2.5,5,6,5,false,L2/2,l2/2,z9+$t*(z9_e-z9));
color( gris)ent_M(2.5,5,0,5,false,-L2/2,-l2/2,z9+$t*(z9_e-z9));
color( gris)ent_M(2.5,5,6,5,false,L2/2,-l2/2,z9+$t*(z9_e-z9));
color( gris)ent_M(2.5,5,0,5,false,-L2/2,l2/2,z9+$t*(z9_e-z9));
//Vis M3 (10) 4 vis sur l'isolateur
color( gris)vis_M(3, 6, 1.5, true, 8.5, 8.5, z10+$t*(z10_e-z10));
color( gris)vis_M(3, 6, 1.5, true, -8.5, 8.5, z10+$t*(z10_e-z10));
color( gris)vis_M(3, 6, 1.5, true, 8.5, -8.5, z10+$t*(z10_e-z10));
color( gris)vis_M(3, 6, 1.5, true, -8.5, -8.5, z10+$t*(z10_e-z10));
//Rondelle M3 (11) 4 rondelles sur l'isolateur
rond_M(3, 0.5, 8.5, 8.5, z11+$t*(z11_e-z11));
rond_M(3, 0.5, -8.5, 8.5, z11+$t*(z11_e-z11));
rond_M(3, 0.5, 8.5, -8.5, z11+$t*(z11_e-z11));
rond_M(3, 0.5, -8.5, -8.5, z11+$t*(z11_e-z11));
//isolateur (12)
translate([0,0,z12+$t*(z12_e-z12)])color(orange)linear_extrude(height = 2, center = true, convexity = 10, scale = 1.0) {import(file = "../LibreCAD/isolateur-433-v2.dxf", layer = "contour");};
//vis M3 (14) 4 vis tête en bas sous l'isolateur
color( gris)vis_M(3, 6, 1.5, false, L2/2, l2/2, z14+$t*(z14_e-z14));
color( gris)vis_M(3, 6, 1.5, false, -L2/2, l2/2, z14+$t*(z14_e-z14));
color( gris)vis_M(3, 6, 1.5, false, L2/2, -l2/2, z14+$t*(z14_e-z14));
color( gris)vis_M(3, 6, 1.5, false, -L2/2, -l2/2, z14+$t*(z14_e-z14));
//vis M3 (14) 1 vis tête en bas sous la JUPE
color( gris)vis_M(3, 6, 1.5, false, -L2/2,0, 12);
//Vis M3 () 2 vis sur la JUPE
color( gris)vis_M(3, 5, 1.5, true, -L2/2, l2/2, 9);
color( gris)vis_M(3, 5, 1.5, true, -L2/2, -l2/2, 9);
//Entretoise M3 (15) 4 entretoises sous l'isolateur (avec tige)
color( gris)ent_M(3,4.9,8,4.8,true,8.5,8.5,z15+$t*(z15_e-z15));
color( gris)ent_M(3,4.9,8,4.8,true,-8.5,8.5,z15+$t*(z15_e-z15));
color( gris)ent_M(3,4.9,8,4.8,true,8.5,-8.5,z15+$t*(z15_e-z15));
color( gris)ent_M(3,4.9,8,4.8,true,-8.5,-8.5,z15+$t*(z15_e-z15));
//Entretoise en aluminium (16)
translate([0,0,z16+$t*(z16_e-z16)])rotate([0,0,0])color( [206/255,206/255,206/255]){ent_fixation();}
//Capteur de température (17) dans l'entretoise en alu
translate([x17+$t*(x17_e-x17),2,z17+$t*(z17_e-z17)])rotate([0,90,0]){import("capteur.stl");}
//Vis de serrage du capteur (18) dans l'entretoise en alu
translate([-8.5,2,z18+$t*(z18_e-z18)])color( noir)cylinder(4,1.75,1.75,center=true);
//Connexion masse mécanique (19) dans l'entretoise en alu
translate([x19-5+$t*(x19_e-x19),-3.4,z19+$t*(z19_e-z19)])rotate([0,90,0])color( noir)cylinder(14,0.9,0.9,center=true);
//Vis de serrage de la masse métallique (20) dans l'entretoise en alu
translate([-8.5,-3.4,z20+$t*(z20_e-z20)])color( noir)cylinder(4,1.75,1.75,center=true);
//vis M3 (1) 3 vis sur le circuit imp
color( gris)vishexa(3,5,1.5,5.5,true,L2/2,l2/2,19.8);
color( gris)vishexa(3,5,1.5,5.5,true,L2/2,-l2/2,19.8);
color( gris)vishexa(3,5,1.5,5.5,true,-L2/2,0,19.8);
//color( gris)vishexa(3,5,1.5,5.5,true,-L2/2,-l2/2,20.8);
//Rondelle M3 () 3 rondelles sous circuit imp
rond_M(3, 1, L2/2,l2/2, 20.3);
rond_M(3, 1, L2/2,-l2/2, 20.3);
rond_M(3, 1, -L2/2,0, 20.3);
//Entretoises hexagonales M3 femelles (5) 3 entretoises sous le circuit imp
color( gris) Ecrou(3,8, 5.5, L2/2, l2/2,15.8);
color( gris) Ecrou(3,8, 5.5, L2/2, -l2/2,15.8);
color( gris) Ecrou(3,8, 5.5, -L2/2, 0,15.8);
//color( gris) Ecrou(3,10, 5.5, -L2/2, -l2/2,z5+$t*(z5_e-z5));
//Rondelle M2 () 4 rondelles sur circuit imp
rond_M(2, 1, x1/2,y1/2, 22.7);
rond_M(2, 1, -x1/2,y1/2, 22.7);
rond_M(2, 1, x1/2,-y1/2, 22.7);
rond_M(2, 1, -x1/2,-y1/2, 22.7);
//Rondelle M2 () 8 rondelles sur MKR WIFI
rond_M(2, 1, x1/2,y1/2, 31.7);
rond_M(2, 1, -x1/2,y1/2, 31.7);
rond_M(2, 1, x1/2,-y1/2, 31.7);
rond_M(2, 1, -x1/2,-y1/2, 31.7);
rond_M(2, 1, x1/2,y1/2, 34.1);
rond_M(2, 1, -x1/2,y1/2, 34.1);
rond_M(2, 1, x1/2,-y1/2, 34.1);
rond_M(2, 1, -x1/2,-y1/2, 34.1);
//Entretoise M2 () 4 entre le circuit imp et le MKR WIFI + 4 entre le MKR WIFI et le TOP
color( gris)ent_M(2,8,0,3.8,true,x1/2,y1/2,27.2);
color( gris)ent_M(2,8,0,3.8,true,-x1/2,y1/2,27.2);
color( gris)ent_M(2,8,0,3.8,true,x1/2,-y1/2,27.2);
color( gris)ent_M(2,8,0,3.8,true,-x1/2,-y1/2,27.2);
color( gris)ent_M(2,10,5,3.8,true,x1/2,y1/2,39.7);
color( gris)ent_M(2,10,5,3.8,true,-x1/2,y1/2,39.7);
color( gris)ent_M(2,10,5,3.8,true,x1/2,-y1/2,39.7);
color( gris)ent_M(2,10,5,3.8,true,-x1/2,-y1/2,39.7);
//Vis M2 () 4 vis sur le TOP
color( gris)vis_M(2, 5, 1.5, true, x1/2,y1/2, hauteur-5.5);
color( gris)vis_M(2, 5, 1.5, true, x1/2,-y1/2, hauteur-5.5);
color( gris)vis_M(2, 5, 1.5, true, -x1/2,y1/2, hauteur-5.5);
color( gris)vis_M(2, 5, 1.5, true, -x1/2,-y1/2, hauteur-5.5);
//Vis M2 () 4 vis sous le circuit imp
color( gris)vis_M(2, 5, 1.5, false, x1/2,y1/2,23.3);
color( gris)vis_M(2, 5, 1.5, false, x1/2,-y1/2,23.3);
color( gris)vis_M(2, 5, 1.5, false, -x1/2,y1/2,23.3);
color( gris)vis_M(2, 5, 1.5, false, -x1/2,-y1/2,23.3);
//TOP () entraxe du MKR WIFI
hauteur=49.5;
translate([0,0,hauteur])rotate([0,0,90])color(orange){import("top.stl");}
//LOGO () monté sur le TOP
translate([0,0,hauteur+7])rotate([0,0,90])color(vert){import("Logo.stl");}
//SHIELD (Batterie + circuit imp) + MKR
translate([-0.62,0,21.5])rotate([0,0,-180])scale([25.4,25.4,25.4])
{
shield(); 
translate([0,0,0.45])MKR();
}
}//translate