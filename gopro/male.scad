
use <profile.scad>

module gopro_mount_male(length=1, base=false) {
    length = max(length, 1);
    translate([0, 0,-4.55]) linear_extrude(2.8) gopro_mount_profile();
    translate([0, 0, 1.75]) linear_extrude(2.8) gopro_mount_profile();
    if (base) {
        translate([length, 7.5, 0]) rotate([90, 0, 0])
        linear_extrude(15) difference() {
            translate([7.125, 0]) square([2.75, 12.6], true);
            translate([5.75, -6.3]) circle(1.75);
            translate([5.75, -0]) circle(1.75);
            translate([5.75,  6.3]) circle(1.75);
        }
    }
}
