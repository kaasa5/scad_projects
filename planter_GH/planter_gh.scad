
part = "top";

$fn = 150;

parts(part);

module parts(part) {
    if (part == "all") {
        bottom();
        color("red",0.3){
            translate([-80,0,8])
            cylinder(200, d = 2.5, center = false);
            translate([-56.5,-56.5,8])
            cylinder(200, d = 2.5, center = false);
            translate([0,-80,8])
            cylinder(200, d = 2.5, center = false);
            translate([56.5,-56.5,8])
            cylinder(200, d = 2.5, center = false);
            translate([80,0,8])
            cylinder(200, d = 2.5, center = false);
            translate([-56.5,56.5,8])
            cylinder(200, d = 2.5, center = false);
            translate([0,80,8])
            cylinder(200, d = 2.5, center = false);
            translate([56.5,56.5,8])
            cylinder(200, d = 2.5, center = false);
        }
        translate([0,0,211]){
            rotate([180,0,0])
            top();
        }
    } 
    else if (part == "bottom")
        bottom();
    else if (part == "top")
        top();
}

module bottom(){
    difference(){
        translate([0,0,0])
        cylinder(8, d = 170, center = false);
        translate([0,0,5])
        cylinder(3, d = 150, center = false);
        translate([0,0,0])
        cylinder(5, d = 167, center = false);
    }
    translate([-80,0,7.99])
    boss(8);
    translate([-56.5,-56.5,7.99])
    boss(8);
    translate([0,-80,8])
    boss(8);
    translate([56.5,-56.5,7.99])
    boss(8);
    translate([80,0,8])
    boss(8);
    translate([-56.5,56.5,7.99])
    boss(8);
    translate([0,80,8])
    boss(8);
    translate([56.5,56.5,7.99])
    boss(8);
    // top rib
    difference(){
        translate([0,0,08])
        cylinder(5, d1 = 170, d2 = 162, center = false);
        translate([0,0,8])
        cylinder(5, d1 = 150, d2 = 158, center = false);
        translate([-80,0,3])
        cylinder(5, d1 = 2.6, d2 = 2.9, center = false);
        // subtract boss holes
        translate([-80,0,8]) boss_hole();
        translate([-56.5,-56.5,8]) boss_hole();
        translate([0,-80,8]) boss_hole();
        translate([56.5,-56.5,8]) boss_hole();
        translate([80,0,8]) boss_hole();
        translate([-56.5,56.5,8]) boss_hole();
        translate([0,80,8]) boss_hole();
        translate([56.5,56.5,8]) boss_hole();
        
    }
}

module top(){

    translate([0,0,0]) difference(){
        translate([0,0,0])
        cylinder(3, d = 165, center = false);
        translate([0,0,0])
        cylinder(3, d = 155, center = false);
    };
    translate([-80,0,3])
    boss();
    translate([-56.5,-56.5,3])
    boss();
    translate([0,-80,3])
    boss();
    translate([56.5,-56.5,3])
    boss();
    translate([80,0,3])
    boss();
    translate([-56.5,56.5,3])
    boss();
    translate([0,80,3])
    boss();
    translate([56.5,56.5,3])
    boss();

}

module boss(outer = 5){
    difference(){
        cylinder(5, d = outer, center = false);
        boss_hole(5);
    }
}

module boss_hole(h=5){
    cylinder(h, d1 = 2.6, d2 = 2.9, center = false);
}