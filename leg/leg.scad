/*
 * leg.scad
 *
 * A portion of ss23's leg by Michael Fincham <michael@hotplate.co.nz>
 *
 */

$fn = 64;

intersection() {
	rotate([0, 90, 0]) {
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
		    
		        // printed part
				  difference() {
              minkowski() {
		        difference() {
		            cylinder(h=30,r=48);
		            
						// model of leg
						cylinder(h=30,r=39.3);

    
		        }
					sphere(r=1);

				}
		            // slot for band
		            difference() {
		                cylinder(h=25,r=45.5);
		                cylinder(h=25,r=43.5);
		            }   
}
		    }
		
		    // pager motor
		    translate([0, 45, 15]) {
		        rotate([90, 0, 0]) {
		            cylinder(h=10, r=5.15);
		        }
		    }
		
		    // wiring slot
		    translate([0, 39, 25]) {
		    cube([2.5, 3, 12], center=true); 
		    }
		
		}
	}
	cube([70, 100, 45], center=true);
}
	



// elastic band model (do not print)
/* difference() {
    cylinder(h=20,r=45.5);
    cylinder(h=20,r=43.5);
} */  


