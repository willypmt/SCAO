    $fn=100;
C=5; //rayon rotation
Diam=1/2;//Diametre cable
Lg=38;//longueur partie centre
A=8;//longueur partie prise
module CableT1()
{
rotate([90,0,0]) cylinder(r=Diam,h=Lg,center=true);//Raccordement 1
translate([0,Lg/2,-C])rotate([0,-90,0])rotate_extrude(angle = 90,convexity = 10)translate([C, 0, 0])circle(r = Diam);//coude jupe haut
translate([0,Lg/2+C,-16])rotate([0,0,0]) cylinder(r=Diam,h=22,center=true);//Raccordement jupe
rotate([0,90,0])translate([22+C,Lg/2,0])rotate_extrude(angle = 90,convexity = 10)translate([C, 0, 0])circle(r = Diam);//coude jupe bas
translate([C,-Lg/2,0])rotate([0,0,180])rotate_extrude(angle = 90,convexity = 10)translate([C, 0, 0])circle(r = Diam);//coude prise 1
translate([C+A/2,-Lg/2-C,0]) rotate([0,90,0]) cylinder(r=Diam,h=A,center=true);//Raccordement prise
translate([A+C,-Lg/2-C,-C])rotate([90,0,0])rotate_extrude(angle = 90,convexity = 10)translate([C, 0, 0])circle(r = Diam);//coude prise 2
}

module CableT2()
{
rotate([90,0,0])translate([-13,0,2])cylinder(r=Diam,h=15,center=false);//Raccordement 1
translate([-15,-2,0])rotate_extrude(angle = 90,convexity = 10)translate([2, 0, 0])circle(r = Diam);//coude T2-1
translate([-11,-17,0])rotate([0,0,180])rotate_extrude(angle = 90,convexity = 10)translate([2, 0, 0])circle(r = Diam);//coude T2-2 
  translate([-11,-19,0]) rotate([0,90,0]) cylinder(r=Diam,h=27,center=false);//Raccordement 2  
    translate([16,-19,-2])rotate([90,0,0])rotate_extrude(angle = 90,convexity = 10)translate([2, 0, 0])circle(r = Diam);//coude T2-3
}
CableT1(); 
CableT2(); 
