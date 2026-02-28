// color.h - extension of base.h...
// but for COLOR!!!!
// public domain'd
// https://tryh4rd.dev/
// also btw all "Color*" structs are assumed to be CIE versions unless
// explicitly stated otherwise

#pragma once

#include "base.h" // depends on base.h, https://github.com/shinmorisawa/base for more info

typedef struct ColorRGB {
    double r, g, b; 
} ColorRGB; // linear sRGB, D65 (yes i did my research)

typedef struct ColorLAB {
    double l, a, b;
} ColorLAB;

typedef struct ColorLCH {
    double l, c, h;
} ColorLCH;

typedef struct ColorOKLAB {
    double l, a, b;
} ColorOKLAB;

typedef struct ColorOKLCH {
    double l, c, h;
} ColorOKLCH;

typedef struct ColorXYZ {
    double x, y, z;
} ColorXYZ;

// beware:
// t is assumed to be between 0,1
// t is normalized
// same goes with all the colors
// so 0,1 instead of 0,255 for ColorRGB for instance
// here be dragons!

// CIE XYZ to linear sRGB D65
ColorRGB color_xyz_to_rgb(ColorXYZ xyz);

// CIE XYZ to CIE LAB
ColorLAB color_xyz_to_lab(ColorXYZ xyz);
// CIE LCH to CIE LAB
ColorLAB color_lch_to_lab(ColorLCH lch);

// CIE LAB to CIE LCH
ColorLCH color_lab_to_lch(ColorLAB lab);

// CIE XYZ to OKLab
ColorOKLAB color_xyz_to_oklab(ColorXYZ xyz);
// OKLch to OKLab
ColorOKLAB color_oklch_to_oklab(ColorOKLCH oklch);

// OKLab to OKLch
ColorOKLCH color_oklab_to_oklch(ColorOKLAB oklab);

// CIE LAB to CIE XYZ
ColorXYZ color_lab_to_xyz(ColorLAB lab);
// OKLab to CIE XYZ
ColorXYZ color_oklab_to_xyz(ColorOKLAB oklab);
