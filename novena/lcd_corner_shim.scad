/*
 * lcd_corner_shim.scan
 *
 * (Mostly) untested LCD corner shim for the Novena Laptop
 * by Michael Fincham <michael@hotplate.co.nz>
 *
 */

$fn = 100;
$hole = 3; // mm

union() {
    difference() {
        cube([10, 5.5, 0.7]);
        translate([$hole/2 + 1, 2.75, -0.1]) {
            cylinder(r=$hole/2, h=5);
        }
    }
    translate([10-$hole/2 - 1, 2.75, 0.2]) {
        cylinder(r1=$hole/2,r2=0);
    }
}