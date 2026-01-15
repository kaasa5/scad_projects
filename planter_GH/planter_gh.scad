$fn = 150;

difference(){
    translate([0,0,5])
    cylinder(10, d = 170, center = false);
    translate([0,0,5])
    cylinder(10, d = 150, center = false);
    translate([-80,0,8])
    cylinder(8, d = 2.8, center = false);
    translate([-56.5,-56.5,8])
    cylinder(8, d = 2.8, center = false);
    translate([0,-80,8])
    cylinder(8, d = 2.8, center = false);
    translate([56.5,-56.5,8])
    cylinder(8, d = 2.8, center = false);
    translate([80,0,8])
    cylinder(8, d = 2.8, center = false);
    translate([-56.5,56.5,8])
    cylinder(8, d = 2.8, center = false);
    translate([0,80,8])
    cylinder(8, d = 2.8, center = false);
    translate([56.5,56.5,8])
    cylinder(8, d = 2.8, center = false);
    }
    
difference(){
    translate([0,0,0])
    cylinder(5, d = 170, center = false);
    cylinder(5, d = 167, center = false);
    }