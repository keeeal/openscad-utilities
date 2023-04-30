
use <MCAD/involute_gears.scad>

module simple_gear(height, teeth, twist=0, center=false) {
    // Twist is defined such that two gears with the same twist will fit
    // together regardless of height or number of teeth.
    translate([0, 0, center ? -height / 2 : 0]) {
        gear(
            number_of_teeth=teeth,
            rim_thickness=height,
            hub_thickness=height,
            gear_thickness=height,
            twist=twist / teeth * height,
            circular_pitch=256,
            bore_diameter=0
        );
    }
}
