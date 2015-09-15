/*
 * Fan mount.scad
 *
 * Lets you hang a fan of various sizes (I used a 120mm case fan) from the side
 * of the Tiny Boy / Fabrikator mini.
 *
 * Michael Fincham <michael@hotplate.co.nz>
 * 
 */

$fn = 20;

difference() {
    union() {
        cube([10,6,10]);
        translate([0, 3, 0]) {
            cylinder(r=3, h=10);
        }
    }
    translate([0, 3, 0]) {
        cylinder(r=1.5, h=10);
    }
    translate([0, 1.5, 0]) {
        cube([10,3,10]);
    }
}

translate([-8.5, -7, 0]) {
    rotate([0, 0, 45]) {
        difference() {
            cube([11,3,10]);
            translate([5, 5, 5]) {
                rotate([90, 0, 0]) {
                    cylinder(r=2, h=10);
                }
            }
        }
    }
}
