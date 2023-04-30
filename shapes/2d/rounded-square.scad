
EPS = 1e-3;

module rounded_square(size, r, center) {
    size = is_list(size) ? size : [size, size];
    r = max(r, EPS);
    dr = center ? 0 : r;
    translate([dr, dr]) minkowski() {
        square([size[0] - 2 * r, size[1] - 2 * r], center);
        circle(r);
    }
}
