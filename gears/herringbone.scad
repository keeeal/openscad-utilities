
use <simple.scad>

module herringbone_gear(height, teeth, twist=0, center=false) {
    // Twist is defined such that two gears with the same twist will fit
    // together regardless of height or number of teeth.
    translate([0, 0, center ? 0 : height / 2]) {
        simple_gear(height / 2, teeth, twist);
        mirror([0, 0, 1]) simple_gear(height / 2, teeth, twist);
    }
}
