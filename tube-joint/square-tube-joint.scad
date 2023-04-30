
module square_tube_joint(height, size=[22, 22]) {
    height = max(height, 10);
    module wedge(x, y) hull() {
        linear_extrude(height - 9) square([x + 1, y], center=true);
        linear_extrude(height - 1) square([x - 2, y], center=true);
    }
    hull() {
        linear_extrude(height) square([size[0] - 4, size[1] - 4], center=true);
        linear_extrude(height - 2) square(size, center=true);
    }
    wedge(size[0], size[1] / 3);
    rotate(90) wedge(size[1], size[0] / 3);
}

square_tube_joint(20);
