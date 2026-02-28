#include "color.h"
#include <stdio.h>
#include <stdlib.h>

int main() {
    ColorXYZ xyz = {
        0.1804375,
        0.0721750,
        0.9503041
    };

    printf("start\n");
    printf("x:%f y:%f z:%f\n", xyz.x, xyz.y, xyz.z);

    ColorOKLAB oklab = color_xyz_to_oklab(xyz);
    ColorLAB lab = color_xyz_to_lab(xyz);
    printf("ok l:%f a:%f b:%f\n", oklab.l, oklab.a, oklab.b);
    printf("l:%f a:%f b:%f\n", lab.l, lab.a, lab.b);

    printf("before, x:%f y:%f z:%f\n", xyz.x, xyz.y, xyz.z);
    ColorXYZ cool = color_lab_to_xyz(lab);
    printf("after, x:%f y:%f z:%f\n", cool.x, cool.y, cool.z);

    ColorLCH lch = {0};
    printf("before, l:%f a:%f b:%f\n", lab.l, lab.a, lab.b);
    lch = color_lab_to_lch(lab);
    lab = color_lch_to_lab(lch);
    printf("after, l:%f a:%f b:%f\n", lab.l, lab.a, lab.b);
    xyz = color_lab_to_xyz(lab);
    printf("x:%f y:%f z:%f\n", xyz.x, xyz.y, xyz.z);

    return 0;
}
