
module square_tube_joint(height) {
    height = max(height, 10);
    module wedge(height) hull() {
        linear_extrude(height - 9) square([23, 6], center=true);
        linear_extrude(height - 1) square([20, 6], center=true);
    }
    hull() {
        linear_extrude(height) square([18, 18], center=true);
        linear_extrude(height - 2) square([22, 22], center=true);
    }
    wedge(height);
    rotate(90) wedge(height);
}
