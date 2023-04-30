
use <../shapes/2d/rounded-square.scad>

module vesa_mount_profile(size, r=0) {
    data = [
        [75, 75],
        [100, 100],
        [200, 200],
        [300, 300],
        [400, 300],
        [400, 400],
    ];

    difference() {
        rounded_square(size, r, center=true);
        for (n = [1 : len(data) - 1]) {
            translate([+data[n][0] / 2, +data[n][1] / 2]) circle(d=5);
            translate([+data[n][0] / 2, -data[n][1] / 2]) circle(d=5);
            translate([-data[n][0] / 2, +data[n][1] / 2]) circle(d=5);
            translate([-data[n][0] / 2, -data[n][1] / 2]) circle(d=5);
        }
    }
}
