#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
// #include <unistd.h>

typedef struct rgb_pixel
{
    uint8_t blue;
    uint8_t green;
    uint8_t red;
} rgb_pixel;

typedef struct ycc_pixel
{
    uint8_t y;
    uint8_t cb;
    uint8_t cr;
} ycc_pixel;

typedef struct ycc_compressed { 
    uint8_t y_tl;
    uint8_t y_tr;
    uint8_t y_bl;
    uint8_t y_br;
    uint8_t cb;
    uint8_t cr;
} ycc_compressed;

typedef struct bmp_header
{
    // File header
    uint16_t Type;
    uint32_t FileSize;
    uint16_t Reserved1;
    uint16_t Reserved2;
    uint32_t OffBits;

    // Image header
    uint32_t Size;
    uint32_t Width;
    uint32_t Height;
    uint16_t Planes;
    uint16_t BitCount;
    uint32_t Compression;
    uint32_t SizeImage;
    uint32_t XPixelsPerMeter; // X PIXEL PER METER
    uint32_t YPixelsPerMeter; 
    uint32_t ClrUsed;
    uint32_t ClrImportant;

} bmp_header;

bmp_header *bmp_init(FILE *fp)
{

    bmp_header *header = malloc(sizeof(struct bmp_header));

    fread(&header->Type, sizeof(uint16_t), 1, fp);
    fread(&header->FileSize, sizeof(uint32_t), 1, fp);
    fread(&header->Reserved1, sizeof(uint16_t), 1, fp);
    fread(&header->Reserved2, sizeof(uint16_t), 1, fp);
    fread(&header->OffBits, sizeof(uint32_t), 1, fp);

    fread(&header->Size, sizeof(uint32_t), 1, fp);
    fread(&header->Width, sizeof(uint32_t), 1, fp);
    fread(&header->Height, sizeof(uint32_t), 1, fp);
    fread(&header->Planes, sizeof(uint16_t), 1, fp);
    fread(&header->BitCount, sizeof(uint16_t), 1, fp);
    fread(&header->Compression, sizeof(uint32_t), 1, fp);
    fread(&header->SizeImage, sizeof(uint32_t), 1, fp);
    fread(&header->XPixelsPerMeter, sizeof(uint32_t), 1, fp);
    fread(&header->YPixelsPerMeter, sizeof(uint32_t), 1, fp);
    fread(&header->ClrUsed, sizeof(uint32_t), 1, fp);
    fread(&header->ClrImportant, sizeof(uint32_t), 1, fp);
    return header;
}

void write_header(bmp_header *header, FILE *output_file){
    fwrite(&header->Type, sizeof(uint16_t), 1, output_file);
    fwrite(&header->FileSize, sizeof(uint32_t), 1, output_file);
    fwrite(&header->Reserved1, sizeof(uint16_t), 1, output_file);
    fwrite(&header->Reserved2, sizeof(uint16_t), 1, output_file);
    fwrite(&header->OffBits, sizeof(uint32_t), 1, output_file);

    fwrite(&header->Size, sizeof(uint32_t), 1, output_file);
    fwrite(&header->Width, sizeof(uint32_t), 1, output_file);
    fwrite(&header->Height, sizeof(uint32_t), 1, output_file);
    fwrite(&header->Planes, sizeof(uint16_t), 1, output_file);
    fwrite(&header->BitCount, sizeof(uint16_t), 1, output_file);
    fwrite(&header->Compression, sizeof(uint32_t), 1, output_file);
    fwrite(&header->SizeImage, sizeof(uint32_t), 1, output_file);
    fwrite(&header->XPixelsPerMeter, sizeof(uint32_t), 1, output_file);
    fwrite(&header->YPixelsPerMeter, sizeof(uint32_t), 1, output_file);
    fwrite(&header->ClrUsed, sizeof(uint32_t), 1, output_file);
    fwrite(&header->ClrImportant, sizeof(uint32_t), 1, output_file);
}

ycc_compressed *downsampleRGBtoYCC(rgb_pixel *input_tl, rgb_pixel *input_tr, rgb_pixel *input_bl, rgb_pixel *input_br)
{
    ycc_compressed *YCC = malloc(sizeof(ycc_pixel));

    // extract ys and cs
    int y_tl = (16 + (((16843 * input_tl->red) + (33030 * input_tl->green) + (6423 * input_tl->blue)) >> 16) );
    int y_tr = (16 + (((16843 * input_tr->red) + (33030 * input_tr->green) + (6423 * input_tr->blue)) >> 16) );
    int y_bl = (16 + (((16843 * input_bl->red) + (33030 * input_bl->green) + (6423 * input_bl->blue)) >> 16) );
    int y_br = (16 + (((16843 * input_br->red) + (33030 * input_br->green) + (6423 * input_br->blue)) >> 16) );
    
    int cb_tl = (128 + (((-9699 * input_tl->red) - (19071 * input_tl->green) + (28770* input_tl->blue)) >> 16) );
    int cr_tl = (128 + (((28770 * input_tl->red) - (24117 * input_tl->green) - (4653 * input_tl->blue)) >> 16) );
    
    int cb_tr = (128 + (((-9699 * input_tr->red) - (19071 * input_tr->green) + (28770* input_tr->blue)) >> 16) );
    int cr_tr = (128 + (((28770 * input_tr->red) - (24117 * input_tr->green) - (4653 * input_tr->blue)) >> 16) );

    int cb_bl = (128 + (((-9699 * input_bl->red) - (19071 * input_bl->green) + (28770* input_bl->blue)) >> 16) );
    int cr_bl = (128 + (((28770 * input_bl->red) - (24117 * input_bl->green) - (4653 * input_bl->blue)) >> 16) );

    int cb_br = (128 + (((-9699 * input_br->red) - (19071 * input_br->green) + (28770* input_br->blue)) >> 16) );
    int cr_br = (128 + (((28770 * input_br->red) - (24117 * input_br->green) - (4653 * input_br->blue)) >> 16) );


    // Calculate Average
    int cb = (cb_tl + cb_tr + cb_bl + cb_br) >> 2;
    int cr = (cr_tl + cr_tr + cr_bl + cr_br) >> 2;

    // Drop samples 
    // int cb = cb_tl;
    // int cr = cr_tl;

    YCC->y_tl = (uint8_t)y_tl;
    YCC->y_tr = (uint8_t)y_tr;
    YCC->y_bl = (uint8_t)y_bl;
    YCC->y_br = (uint8_t)y_br;
    YCC->cb = (uint8_t)cb;
    YCC->cr = (uint8_t)cr;

    return YCC;
}

int clip(float in){
  if(in > 255){
    return 255;
  } else if (in < 0) {
    return 0;
  } else {
    return (uint8_t)in;
  }
}

rgb_pixel *upsampleYCCtoRGB(ycc_compressed *input, FILE *output, int width)
{
    rgb_pixel *RGB = malloc(sizeof(rgb_pixel));

    float Yp = input->y_tl - 16;
    float Cbp = input->cb - 128;
    float Crp = input->cr - 128;
    RGB->red = clip((1.164 * Yp) + (1.596 * Crp));
    RGB->green = clip((1.164 * Yp) - (0.813 * Crp) - (0.391 * Cbp));
    RGB->blue = clip((1.164 * Yp) + (2.018 * Cbp));

    fwrite(RGB, sizeof(rgb_pixel), 1, output);

    Yp = input->y_tr - 16;
    RGB->red = clip((1.164 * Yp) + (1.596 * Crp));
    RGB->green = clip((1.164 * Yp) - (0.813 * Crp) - (0.391 * Cbp));
    RGB->blue = clip((1.164 * Yp) + (2.018 * Cbp));
    fwrite(RGB, sizeof(rgb_pixel), 1, output);

    fseek(output, width*sizeof(rgb_pixel), SEEK_CUR);

    Yp = input->y_bl - 16;
    RGB->red = clip((1.164 * Yp) + (1.596 * Crp));
    RGB->green = clip((1.164 * Yp) - (0.813 * Crp) - (0.391 * Cbp));
    RGB->blue = clip((1.164 * Yp) + (2.018 * Cbp));
    fwrite(RGB, sizeof(rgb_pixel), 1, output);

    Yp = input->y_br - 16;
    RGB->red = clip((1.164 * Yp) + (1.596 * Crp));
    RGB->green = clip((1.164 * Yp) - (0.813 * Crp) - (0.391 * Cbp));
    RGB->blue = clip((1.164 * Yp) + (2.018 * Cbp));
    fwrite(RGB, sizeof(rgb_pixel), 1, output);
    fseek(output, -width*sizeof(rgb_pixel), SEEK_CUR);
}

int main( int argc, char *argv[] )
{

    // exit program if not enough or to much input files was supplied.
    if (argc != 4) {
        printf("Please provide the correct arguments for RGB to YCC conversion.\n");
        exit(1);
    }
    
    // open file in binary read mode
    FILE *fInput;
    if ((fInput = fopen(argv[1], "rb")) == NULL)
    {
        printf("Error! Opening input file\n");
        exit(1);
    }

    // open files for writing the output
    FILE *yccOutputFile;
    FILE *rgbOutputFile;
    if ((yccOutputFile = fopen(argv[2], "wb")) == NULL)
    {
        printf("Error! Opening Output file\n");
        exit(1);
    }
    if ((rgbOutputFile = fopen(argv[3], "wb")) == NULL)
    {
        printf("Error! Opening Output file\n");
        exit(1);
    }

    bmp_header *file_header;
    file_header = bmp_init(fInput);
    printf("Width, Height: %d, %d\n", file_header->Width, file_header->Height);

    // add header to file
    write_header(file_header, yccOutputFile);
    write_header(file_header, rgbOutputFile);

    fseek(fInput, file_header->OffBits, SEEK_SET);

    // initialize data size
    rgb_pixel *input_rbg_tl;
    rgb_pixel *input_rbg_tr;
    rgb_pixel *input_rbg_bl;
    rgb_pixel *input_rbg_br;

    input_rbg_tl = malloc(sizeof(rgb_pixel));
    input_rbg_tr = malloc(sizeof(rgb_pixel));
    input_rbg_bl = malloc(sizeof(rgb_pixel));
    input_rbg_br = malloc(sizeof(rgb_pixel));

    ycc_compressed *output_ycc;
    rgb_pixel *output_rgb;

    // printf("Size of RGB: %d\n", sizeof(rgb_pixel) );
    int iterations = file_header->Width * file_header->Height;

    int width = file_header->Width;
    int height = file_header->Height;

    for (int i = width; i; i-=2){
        for (int j = height; j; j-=2){

            //Read 4 rgb pixels for downsampling
            fread(input_rbg_tl, sizeof(rgb_pixel), 1, fInput);
            fread(input_rbg_tr, sizeof(rgb_pixel), 1, fInput);
            fseek(fInput, sizeof(rgb_pixel)*width, SEEK_CUR);
            fread(input_rbg_bl, sizeof(rgb_pixel), 1, fInput);
            fread(input_rbg_br, sizeof(rgb_pixel), 1, fInput);
            fseek(fInput, -sizeof(rgb_pixel)*width, SEEK_CUR);


            
            output_ycc = downsampleRGBtoYCC(input_rbg_tl, input_rbg_tr, input_rbg_bl, input_rbg_br);
            if (i == 390 && j == 190 ){
                printf("Pixel [%d]: %d %d %d\n", i, input_rbg_tl->red, input_rbg_tl->green, input_rbg_tl->blue);
                printf("Converted [%d] RGB to YCC: %d %d %d\n", i, output_ycc->y_tl, output_ycc->cb, output_ycc->cr);
            }
            upsampleYCCtoRGB(output_ycc,rgbOutputFile, width);

            // if (i < 400)
            // {
            //     // Test pixel output
            //     printf("Pixel [%d]: %d %d %d\n", i, input_rbg->red, input_rbg->green, input_rbg->blue);
            //     printf("Converted [%d] RGB tp YCC: %d %d %d\n", i, output_ycc->y, output_ycc->cb, output_ycc->cr);
            //     printf("Reverted [%d] YCC to RGB: %d %d %d\n", i, output_rgb->red, output_rgb->green, output_rgb->blue);
            // }

            //Write YCC
            fwrite(output_ycc, sizeof(ycc_compressed), 1, yccOutputFile);
        }
    }
    fclose(fInput);
    fclose(yccOutputFile);
    fclose(rgbOutputFile);
}