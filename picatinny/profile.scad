
module picatinny_rail_profile(max_width=21.21) {
    module segment(y, w, h) { translate([0, y]) square([w, h], center=true); }

    data = [
        [0.0001, 15.6718, 0.0002],
        [3.4926, 15.6718, 0.0002],
        [6.5278, 21.2090, 0.5334],
        [9.3217, 16.1544, 0.0002],
    ];

    intersection() {
        square([max_width, 20], center=true);
        for (n = [1 : len(data) - 1]) {
            hull() {
                segment(data[n][0], data[n][1], data[n][2]);
                segment(data[n - 1][0], data[n - 1][1], data[n - 1][2]);
            }
        }
    }
}
