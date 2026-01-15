
part = "bottom";

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
        translate([0,0,5])
        cylinder(10, d = 170, center = false);
        translate([0,0,5])
        cylinder(10, d = 150, center = false);
        translate([-80,0,8])
        cylinder(8, d1 = 2.8, d2 = 3, center = false);
        translate([-56.5,-56.5,8])
        cylinder(8, d1 = 2.8, d2 = 3, center = false);
        translate([0,-80,8])
        cylinder(8, d1 = 2.8, d2 = 3, center = false);
        translate([56.5,-56.5,8])
        cylinder(8, d1 = 2.8, d2 = 3, center = false);
        translate([80,0,8])
        cylinder(8, d1 = 2.8, d2 = 3, center = false);
        translate([-56.5,56.5,8])
        cylinder(8, d1 = 2.8, d2 = 3, center = false);
        translate([0,80,8])
        cylinder(8, d1 = 2.8, d2 = 3, center = false);
        translate([56.5,56.5,8])
        cylinder(8, d1 = 2.8, d2 = 3, center = false);
    }    
    difference(){
        translate([0,0,0])
        cylinder(5, d = 170, center = false);
        cylinder(5, d = 167, center = false);
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

module boss(){
    difference(){
        cylinder(5, d = 5, center = false);
        cylinder(5, d1 = 2.8, d2 = 3, center = false);
    }
}