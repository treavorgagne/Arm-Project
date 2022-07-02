#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
// #include <unistd.h>

typedef struct rgb_pixel {
    uint8_t red;
    uint8_t green;
    uint8_t blue;
} rgb_pixel;

typedef struct ycc_pixel {
    float y;
    float cb;
    float cr;
} ycc_pixel;
 
ycc_pixel convertRGBtoYCC(uint8_t R, uint8_t G, uint8_t B){
    ycc_pixel YCC;

    float y  = (float)(16 + (0.257 * R) +( 0.504 * G) + (0.098 * B));
    float cb = (float)(128 + (-0.148 * R) - (0.291 * G) + (0.439 * B));
    float cr = (float)(128 + (0.439 * R) - (0.368 * G) - (0.071 * B));

    YCC.y = y;
    YCC.cb = cb;
    YCC.cr = cr;

    return YCC;
}

rgb_pixel convertYCCtoRGB(float Y, float Cb, float Cr){
    rgb_pixel RGB;
    float Yp = Y - 16;
    float Cbp = Cb - 128;
    float Crp = Cr - 128;
    float r = (float) ((1.164 * Yp) + (1.596*Crp));
    float g = (float) ((1.164 * Yp) - (0.813*Crp) - (0.391*Cbp));
    float b = (float) ((1.164 * Yp) + (2.018*Cbp));

    RGB.red = r;
    RGB.green = g;
    RGB.blue = b;
    
    printf("Reverted RGB: %f %f %f\n", r, g, b);
}


int main()
{
    // open file in binary read mode
    FILE *fInput;
    if ((fInput = fopen("./test-input.bmp","rb")) == NULL){
       printf("Error! Opening input file");
       exit(1);
    }

    FILE *fOutput;
    if ((fOutput = fopen("./test-output.bmp","w")) == NULL){
       printf("Error! Opening Output file");
       exit(1);
    }

    // skip header of jpg file
    int header_size = 54;
    // fread(, header_size, header_size, fInput);
    fseek( fInput, header_size, SEEK_SET );
    // TODO get width and heigth from header
    
    int width = 400;
    int height = 300;

    // initialize data size 
    int image_size = width*height;
    rgb_pixel *input_rbg;
    input_rbg = malloc(sizeof(rgb_pixel));
    ycc_pixel output_ycc;
    
    for (int i = 0; i < width; i++){
        for (int j = 0; j < height; j++){

            fread(input_rbg, sizeof(rgb_pixel), 1, fInput);

            if (i == 0 && j == 50){
                printf("Original [%d][%d] RGB: %d %d %d\n", i, j, input_rbg->red, input_rbg->green, input_rbg->blue);
                output_ycc = convertRGBtoYCC(input_rbg->red, input_rbg->green, input_rbg->blue);
                printf("Converted [%d][%d] YCC: %f %f %f\n",i, j, output_ycc.y, output_ycc.cb, output_ycc.cr);
                convertYCCtoRGB(output_ycc.y, output_ycc.cb, output_ycc.cr);
            }
        }
    }

    // todo output

}