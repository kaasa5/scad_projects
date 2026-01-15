$fn = 150;

difference(){
    translate([0,0,5])
    cylinder(15, d = 168, center = false);
    translate([0,0,5])
    cylinder(15, d = 148, center = false);
    translate([-79,0,8])
    cylinder(12, d = 2.5, center = false);
    translate([-55.5,-55.5,8])
    cylinder(12, d = 2.5, center = false);
    translate([0,-79,8])
    cylinder(12, d = 2.5, center = false);
    translate([55.5,-55.5,8])
    cylinder(12, d = 2.5, center = false);
    translate([79,0,8])
    cylinder(12, d = 2.5, center = false);
    translate([-55.5,55.5,8])
    cylinder(12, d = 2.5, center = false);
    translate([0,79,8])
    cylinder(12, d = 2.5, center = false);
    translate([55.5,-55.5,8])
    cylinder(12, d = 2.5, center = false);
    }
    
difference(){
    translate([0,0,0])
    cylinder(5, d = 168, center = false);
    cylinder(5, d = 165, center = false);
    }