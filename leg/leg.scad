/*
 * leg.scad
 *
 * A portion of ss23's leg by Michael Fincham <michael@hotplate.co.nz>
 *
 */

$fn = 100;

difference() {

    // band
    intersection() {
        // wanted portion
        hull() {
            cylinder(h=60,r=2);
            translate([30, 47, 0]) {
                cylinder(h=60,r=2);
            }
            translate([-30, 47, 0]) {
                cylinder(h=60,r=2);
            }
        }
    
        // bracelet
        difference() {
            cylinder(h=30,r=47);
            cylinder(h=30,r=39.3);
            // leg
            difference() {
                cylinder(h=25,r=45.5);
                cylinder(h=25,r=43.5);
            }       
        }
    }

    // pager motor
    translate([0, 45, 15]) {
        rotate([90, 0, 0]) {
            cylinder(h=10, r=5);
        }
    }

    // wiring slot
    translate([0, 39, 25]) {
    cube([2.5, 9, 12], center=true); 
    }

}

// elastic band model (do not print)
/* difference() {
    cylinder(h=20,r=45.5);
    cylinder(h=20,r=43.5);
} */  


