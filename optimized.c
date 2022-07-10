#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
// #include <unistd.h>

typedef struct rgb_pixel
{
    uint8_t red;
    uint8_t green;
    uint8_t blue;
} rgb_pixel;

typedef struct ycc_pixel
{
    uint8_t y;
    uint8_t cb;
    uint8_t cr;
} ycc_pixel;

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

ycc_pixel *convertRGBtoYCC(rgb_pixel *input)
{
    ycc_pixel *YCC = malloc(sizeof(ycc_pixel));

    int y = (16 + (((16843 * input->red) + (33030 * input->green) + (6423 * input->blue)) >> 16) );
    int cb = (128 + (((-9699 * input->red) - (19071 * input->green) + (28770* input->blue)) >> 16) );
    int cr = (128 + (((28770 * input->red) - (24117 * input->green) - (4653 * input->blue)) >> 16) );

    YCC->y = (uint8_t)y;
    YCC->cb = (uint8_t)cb;
    YCC->cr = (uint8_t)cr;

    return YCC;
}

rgb_pixel *convertYCCtoRGB(float Y, float Cb, float Cr)
{
    rgb_pixel *RGB = malloc(sizeof(rgb_pixel));
    float Yp = Y - 16;
    float Cbp = Cb - 128;
    float Crp = Cr - 128;
    RGB->red = (uint8_t)((1.164 * Yp) + (1.596 * Crp));
    RGB->green = (uint8_t)((1.164 * Yp) - (0.813 * Crp) - (0.391 * Cbp));
    RGB->blue = (uint8_t)((1.164 * Yp) + (2.018 * Cbp));

    return RGB;
}

ycc_pixel *downsample(ycc_pixel *a, ycc_pixel *b, ycc_pixel *c, ycc_pixel *d)
{
    ycc_pixel *result = (ycc_pixel *)malloc(sizeof(ycc_pixel));

    // for division /4 use >> 2

    float y_avg = (a->y + b->y + c->y + d->y) / 4;
    float cb_avg = (a->cb + b->cb + c->cb + d->cb) / 4;
    float cr_avg = (a->cr + b->cr + c->cr + d->cr) / 4;
    result->y = y_avg;
    result->cb = cb_avg;
    result->cr = cr_avg;
    return result;
}

int main( int argc, char *argv[] )
{

    // exit program if not enough or to much input files was supplied.
    if (argc != 2) {
        printf("Please provide 1 file .bmp file to convert to RGB to YCC.");
        exit(1);
    }
    
    // open file in binary read mode
    FILE *fInput;
    if ((fInput = fopen(argv[1], "rb")) == NULL)
    {
        printf("Error! Opening input file");
        exit(1);
    }

    // open files for writing the output
    FILE *yccOutputFile;
    FILE *rgbOutputFIle;
    if ((yccOutputFile = fopen("./output/ycc_output_optimized.bmp", "wb")) == NULL)
    {
        printf("Error! Opening Output file");
        exit(1);
    }
    if ((rgbOutputFIle = fopen("./output/rgb_output_optimized.bmp", "wb")) == NULL)
    {
        printf("Error! Opening Output file");
        exit(1);
    }

    bmp_header *file_header;
    file_header = bmp_init(fInput);
    printf("Width, Height: %d, %d\n", file_header->Width, file_header->Height);

    // add header to file
    write_header(file_header, yccOutputFile);
    write_header(file_header, rgbOutputFIle);

    fseek(fInput, file_header->OffBits, SEEK_SET);

    // initialize data size
    rgb_pixel *input_rbg;

    input_rbg = malloc(sizeof(rgb_pixel));

    ycc_pixel *output_ycc;

    rgb_pixel *output_rgb;

    // printf("Size of RGB: %d\n", sizeof(rgb_pixel) );
    int iterations = file_header->Width * file_header->Height;
    for (int i = iterations; i; i--)
    {

        fread(input_rbg, sizeof(rgb_pixel), 1, fInput);
        // fwrite(input_rbg, sizeof(rgb_pixel), 1, fOutput);
        output_ycc = convertRGBtoYCC(input_rbg);
        output_rgb = convertYCCtoRGB(output_ycc->y, output_ycc->cb, output_ycc->cr);
        if (i < 400)
        {
            // Test pixel output
            printf("Pixel [%d]: %d %d %d\n", i, input_rbg->red, input_rbg->green, input_rbg->blue);
            printf("Converted [%d] RGB tp YCC: %d %d %d\n", i, output_ycc->y, output_ycc->cb, output_ycc->cr);
            printf("Reverted [%d] YCC to RGB: %d %d %d\n", i, output_rgb->red, output_rgb->green, output_rgb->blue);
        }

        //Write YCC
        fwrite(output_ycc, sizeof(ycc_pixel), 1, yccOutputFile);

        //Write RGB 
        fwrite(output_rgb, sizeof(rgb_pixel), 1, rgbOutputFIle);
    }

    fclose(fInput);
    fclose(yccOutputFile);
    fclose(rgbOutputFIle);
}