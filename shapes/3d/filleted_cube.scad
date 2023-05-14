EPS = 1e-3;

module filleted_cube(size, r=0, center=false) {
    size = is_list(size) ? size : [size, size, size];
    r = max(r, EPS);
    dr = center ? 0 : r;
    translate([dr, dr, dr]) minkowski() {
        cube([size[0] - 2 * r, size[1] - 2 * r, size[2] - 2 * r], center);
        sphere(r);
    }
}
