
module gopro_mount_profile(length=1, radius=7.5, bore=5.4) {
    length = max(length, 1);
    difference() {
        union() {
            circle(radius);
            translate([0, -radius]) square([length + radius, 2 * radius]);
        }
        circle(d=bore);
    }
}
