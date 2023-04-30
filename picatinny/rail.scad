
use <profile.scad>

module picatinny_rail(length, max_width=21.21) {
    period = 10.0076;
    gap = 5.2324;

    n_gaps = floor((length + gap - period) / period);
    residual = length + gap - period - n_gaps * period;

    module end_cap() {
        translate([0, 3.4926])
        linear_extrude(1, scale=1 / 0.9) scale(0.9)
        translate([0, -3.4926]) picatinny_rail_profile(max_width);
    }

    difference() {
        rotate([0, 0, 90]) rotate([90, 0, 0])
        union() {
            end_cap();
            translate([0, 0, 1]) linear_extrude(length - 2)
            picatinny_rail_profile(max_width);
            translate([0, 0, length]) mirror([0, 0, 1]) end_cap();
        }
        if (n_gaps > 0) {
            for (n = [1:n_gaps]) {
                translate([n * period + residual / 2 - gap, -11, 6.3246])
                cube([gap, 22, 3]);
            }
        }
    }
}
