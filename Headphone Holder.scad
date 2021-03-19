$fn = 128;

module body() {
    
    translate([-10, 0, 0]) {
        // connector
        difference() {
            hull() {
                rotate([0, 90, 0])
                cylinder(d=20, h=10);
                
                translate([0, -20, 50])
                cube([10, 40, 5]);
            }
            
            // cutout
            hull() {
                translate([0, 0, 20])
                rotate([0, 90, 0])
                cylinder(d=5, h=10);
                translate([0, 0, 40])
                rotate([0, 90, 0])
                cylinder(d=10, h=10);
            }
        }
        
        // top part
        translate([10, -20, 50]) {
            cube([40, 40, 5]);
        }
    }
}


module hook(bandwidth = 30) {
    rotate([0, 90, 0]) {
        // main holder
        cylinder(d=20, h = bandwidth);
    
        // retainer
        translate([0, 0, bandwidth])
        hull() {
            cylinder(d = 20, h = 10);
            translate([-5, 0, 5])
            cylinder(d = 20, h = 5);
        }
    }
}

hook();
body();
