#include "color.h"
#include <stdio.h>
#include <stdlib.h>

int main() {
    ColorXYZ xyz = {
        0.1804375,
        0.0721750,
        0.9503041
    };

    ColorLAB lab = {0};
    ColorLCH lch = {0};
    ColorOKLAB oklab = {0};
    ColorOKLCH oklch = {0};
    ColorXYZ output = {0};

    printf("start\n");
    printf("x:%f y:%f z:%f\n", xyz.x, xyz.y, xyz.z);

    printf("doing XYZ -> LAB -> XYZ\n");
    lab = color_xyz_to_lab(xyz); 
    output = color_lab_to_xyz(lab);
    printf("output: x:%f y:%f z:%f\n", output.x, output.y, output.z);

    printf("doing XYZ -> OKLAB -> XYZ\n");
    oklab = color_xyz_to_oklab(xyz);
    output = color_oklab_to_xyz(oklab);
    printf("output: x:%f y:%f z:%f\n", output.x, output.y, output.z);

    printf("doing XYZ -> LAB -> LCH -> LAB -> XYZ\n");
    lab = color_xyz_to_lab(xyz);
    lch = color_lab_to_lch(lab);
    lab = color_lch_to_lab(lch);
    output = color_lab_to_xyz(lab);
    printf("output: x:%f y:%f z:%f\n", output.x, output.y, output.z);

    printf("doing XYZ -> OKLab -> OKLch -> OKLab -> XYZ\n");
    oklab = color_xyz_to_oklab(xyz);
    oklch = color_oklab_to_oklch(oklab);
    oklab = color_oklch_to_oklab(oklch);
    output = color_oklab_to_xyz(oklab);
    printf("output: x:%f y:%f z:%f\n", output.x, output.y, output.z);

    return 0;
}
