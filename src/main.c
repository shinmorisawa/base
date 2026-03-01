#include "color.h"
#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include <unistd.h>
#include <fcntl.h>

void rgb_handler(ColorRGB rgb) {
    ColorRGB rgb2 = linear_to_srgb(rgb);
    int r = rgb2.r * 255;
    int g = rgb2.g * 255;
    int b = rgb2.b * 255;
    printf("\033[38;2;%d;%d;%dm", r - 25, g - 25, b - 25);
    printf("\033[48;2;%d;%d;%dm>.<!!\n", r, g, b);
}

void clean_fd(int* fd) {
    if (*fd >= 1) {
        close(*fd);
    }
}

u64 true_random() {
    cleanup(clean_fd, int) fd = open("/dev/random", O_RDONLY);
    u64 thing = 0;
    (void)read(fd, &thing, 8);
    return thing;
}

int main() {
    struct timespec ts;

    ColorOKLCH oklch_1 = {
        (true_random() % 1000) / 1000.0,
        (true_random() % 1000) / 10000.0,
        (true_random() % 1000) / 1000.0
    };

    ColorOKLCH oklch_2 = {
        (true_random() % 1000) / 1000.0,
        (true_random() % 1000) / 10000.0,
        (true_random() % 1000) / 1000.0
    };

    ColorHandler handler = {0};
    handler.color_rgb = rgb_handler;
    handler.supported_spaces = RGB;

    color_install_handler(handler);

    for (int i = 0; i < 50; i++) {
        ColorOKLCH oklch = color_oklch_lerp(oklch_1, oklch_2, i / (500.0 - 1.0));
        Color color = {0};
        color.color_rgb = color_oklch_to_rgb(oklch);
        color.type = RGB;
        color_run_handler(0, color);
        ts.tv_sec = 0;
        ts.tv_nsec = 5 * 1000000;
        nanosleep(&ts, NULL);
    }

    printf("\033[0m");

    return 0;
}
