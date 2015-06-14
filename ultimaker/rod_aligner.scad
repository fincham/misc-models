
$fn = 100;

rotate([-90, 0, 0]) {
    difference() {
        union() { // the rod-aligner itself
            
            cube([8,40,5]); // pulley-toucher       
            
            hull() { // "fillet" between pulley-toucher and down-wards stick
                translate([0, 15, 0]) {            
                    cube([8,20,5]); 
                }
                translate([-2, 35, 0]) {
                    cube([12, 5, 12]);
                }
            }
            
            translate([-2, 35, 0]) {
                cube([12, 10, 40]); // down-wards stick
            }
            
        }
        
        translate([4, 6, 0]) {
            cylinder(h=20, r=2, center=true); // cable-tie hole in pulley-toucher
        }
        
        translate([4, 37, 25]) {
            rotate([90, 0, 0]) {
                cylinder(h=20, r=4, center=true); // hole in down-wards stick
            }
        } 
        
        translate([0, 34, 25]) { // fudge factor of 1mm to make sure it gets fully "cut out"
                cube([8, 20, 40]); // slot in down-wards stick
        }     
    }
}