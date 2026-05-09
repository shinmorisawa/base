#include "color.h"
#include <math.h>
#include <stdio.h>

void color_printer(ColorXYZ xyz) {
    ColorRGB rgb = color_xyz_to_rgb(xyz);
    rgb = color_tonemap_lottes(rgb);
    rgb = linear_to_srgb(rgb);

    int r = clamp((int)round(rgb.r * 255), 0, 255);
    int g = clamp((int)round(rgb.g * 255), 0, 255);
    int b = clamp((int)round(rgb.b * 255), 0, 255);

    printf("\033[48;2;%d;%d;%dm#%2x%2x%2x", r, g, b, r, g, b);
    printf("\033[0m\n");
}

int main() {
    ColorHandler handler = {.color_xyz = color_printer,
                            .supported_spaces = XYZ};

    color_install_handler(handler);

    for (float i = 0.01; i < 1.5; i += 0.01) {
        ColorXYZ a = color_cherenkov_to_xyz(1.33);

        a.x *= i;
        a.y *= i;
        a.z *= i;
        Color color = {.color_xyz = a, .type = XYZ};
        color_run_handler(0, color);
    }

    assert(1 == 0);
}
