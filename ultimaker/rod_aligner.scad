
$fn = 100;

rotate([-90, 0, 0]) {
    difference() {
        union() { // the rod-aligner itself
            
            translate([0, 10, 0]) {
                cube([8,5,5]); // pulley-toucher       
            }

            hull() { // "fillet" between pulley-toucher and down-wards stick
                translate([0, 15, 0]) {            
                    cube([8,20,5]); 
                }
                translate([-2, 35, 0]) {
                    cube([12, 5, 5]);
                }
            }
            
            translate([-2, 35, 0]) {
                cube([12, 15, 20]); // down-wards stick
            }
            
        }
        
       
        translate([4, 37, 15]) {
            rotate([90, 0, 0]) {
                cylinder(h=50, r=4.75, center=true); // hole in down-wards stick
            }
        } 
        
        translate([-0.75, 34, 16]) { // fudge factor of 1mm to make sure it gets fully "cut out"
                cube([9.5, 20, 40]); // slot in down-wards stick
        }     
    }
}


/*
translate([1.5, 0, -50]) {
    cube([5, 10, 150]); // measurer
}
*/