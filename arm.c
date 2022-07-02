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
 
ycc_pixel* convertRGBtoYCC(rgb_pixel *input){
    ycc_pixel *YCC = malloc(sizeof(ycc_pixel));

    float y  = (float)(16 + (0.257 * input->red) +( 0.504 * input->green) + (0.098 * input->blue));
    float cb = (float)(128 + (-0.148 * input->red) - (0.291 * input->green) + (0.439 * input->blue));
    float cr = (float)(128 + (0.439 * input->red) - (0.368 * input->green) - (0.071 * input->blue));

    YCC->y = y;
    YCC->cb = cb;
    YCC->cr = cr;

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

ycc_pixel* downsample(ycc_pixel* a, ycc_pixel* b, ycc_pixel* c, ycc_pixel* d){
    ycc_pixel *result = (ycc_pixel *) malloc(sizeof(ycc_pixel));
    float y_avg = (a->y + b->y + c->y + d->y) / 4;
    float cb_avg = (a->cb + b->cb + c->cb + d->cb) / 4;
    float cr_avg = (a->cr + b->cr + c->cr + d->cr) / 4;
    result->y = y_avg;
    result->cb = cb_avg;
    result->cr = cr_avg;
    return result;
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
    // fread( , 1, header_size, fInput);
    // fwrite(output_ycc, sizeof(ycc_pixel), 1, fOutput);
    fseek( fInput, header_size, SEEK_SET );
    // TODO get width and heigth from header
    
    
    int width = 400;
    int height = 300;

    // initialize data size 
    int image_size = width*height;
    rgb_pixel *input_rbg_tl;
    rgb_pixel *input_rbg_tr;
    rgb_pixel *input_rbg_bl;
    rgb_pixel *input_rbg_br;
    input_rbg_tl = malloc(sizeof(rgb_pixel));
    input_rbg_tr = malloc(sizeof(rgb_pixel));
    input_rbg_bl = malloc(sizeof(rgb_pixel));
    input_rbg_br = malloc(sizeof(rgb_pixel));

    ycc_pixel *output_tl;
    ycc_pixel *output_tr;
    ycc_pixel *output_bl;
    ycc_pixel *output_br;
    ycc_pixel *output_ycc;
    
    for (int i = 0; i < width; i+=2){
        for (int j = 0; j < height; j+=2){

            fread(input_rbg_tl, sizeof(rgb_pixel), 1, fInput);
            fread(input_rbg_tr, sizeof(rgb_pixel), 1, fInput);
            fseek( fInput, width - 2, SEEK_CUR );
            fread(input_rbg_bl, sizeof(rgb_pixel), 1, fInput);
            fread(input_rbg_br, sizeof(rgb_pixel), 1, fInput);
            fseek( fInput, (-width), SEEK_CUR );
            if (i < 2 && j < 2){

                //Test all pixels
                // printf("Pixel [%d][%d]: %d %d %d\n", i , j, input_rbg_tl->red, input_rbg_tl->green, input_rbg_tl->blue);

                //Test readin 2 pixels
                printf("Pixel [%d][%d]: %d %d %d\n", i , j, input_rbg_tl->red, input_rbg_tl->green, input_rbg_tl->blue);
                printf("Pixel [%d][%d]: %d %d %d\n", i , j+1, input_rbg_tr->red, input_rbg_tr->green, input_rbg_tr->blue);
                printf("Pixel [%d][%d]: %d %d %d\n", i+1 , j, input_rbg_bl->red, input_rbg_bl->green, input_rbg_bl->blue);
                printf("Pixel [%d][%d]: %d %d %d\n", i+1 , j+1, input_rbg_br->red, input_rbg_br->green, input_rbg_br->blue);
                // printf("First: %d %d %d\n", input_rbg_tl->red, input_rbg_tl->green, input_rbg_tl->blue);
                // printf("Second: %d %d %d\n", input_rbg_tr->red, input_rbg_tr->green, input_rbg_tr->blue);
                // output_tl = convertRGBtoYCC(input_rbg_tl);
                // output_tr = convertRGBtoYCC(input_rbg_tr);
                // output_bl = convertRGBtoYCC(input_rbg_bl);
                // output_br = convertRGBtoYCC(input_rbg_br);
                // output_ycc = downsample(
                //     convertRGBtoYCC(input_rbg_tl),
                //     convertRGBtoYCC(input_rbg_tr),
                //     convertRGBtoYCC(input_rbg_bl),
                //     convertRGBtoYCC(input_rbg_br)
                // );
                //printf("Converted [%d][%d] YCC: %f %f %f\n",i, j, output_ycc->y, output_ycc->cb, output_ycc->cr);
                // convertYCCtoRGB(output_ycc->y, output_ycc->cb, output_ycc->cr);
            }

            // ouput to file
            fwrite(output_ycc, sizeof(ycc_pixel), 1, fOutput);
        }
    }

    // todo output

}