
use <squylinder.scad>

module chamfered_squylinder(h, r1, r2, c=1) {
    hull() {
        squylinder(h, r1 - c, r2 - c);
        translate([0, 0, c]) squylinder(h - 2 * c, r1, r2);
    }
}
