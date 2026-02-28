#include "color.h"
#include <stdio.h>
#include <stdlib.h>

void rgb_handler(ColorRGB rgb) {
    ColorRGB rgb2 = linear_to_srgb(rgb);
    int r = rgb2.r * 255;
    int g = rgb2.g * 255;
    int b = rgb2.b * 255;
    printf("\033[38;2;%d;%d;%dm", r, g, b);
    printf("\033[48;2;%d;%d;%dm███████████████\n", r, g, b);
}

int main() {
    ColorOKLCH oklch_1 = {
        0.7,
        0.0,
        0.0
    };

    ColorOKLCH oklch_2 = {
        0.8,
        0.3,
        1.0
    };

    ColorHandler handler = {0};
    handler.color_rgb = rgb_handler;
    handler.supported_spaces = RGB;

    color_install_handler(handler);

    for (double i = 0; i < 1.01; i += 0.001) {
        ColorOKLCH oklch = color_oklch_lerp(oklch_1, oklch_2, i);
        Color color = {0};
        color.color_rgb = color_oklch_to_rgb(oklch);
        color.type = RGB;
        color_run_handler(0, color);
    }

    return 0;
}
