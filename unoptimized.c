#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

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

typedef struct ycc_compressed 
{ 
    uint8_t y_tl;
    uint8_t y_tr;
    uint8_t y_bl;
    uint8_t y_br;
    uint8_t cb;
    uint8_t cr;
} ycc_compressed;

typedef struct file_header
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

} file_header;

file_header *bmp_init(FILE *fp)
{

    file_header *header = malloc(sizeof(struct file_header));

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

void write_header(file_header *header, FILE *output_file)
{
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
    float y_tl = (float)(16 + (0.257 * input_tl->red) + (0.504 * input_tl->green) + (0.098 * input_tl->blue));
    float y_tr = (float)(16 + (0.257 * input_tr->red) + (0.504 * input_tr->green) + (0.098 * input_tr->blue));
    float y_bl = (float)(16 + (0.257 * input_bl->red) + (0.504 * input_bl->green) + (0.098 * input_bl->blue));
    float y_br = (float)(16 + (0.257 * input_br->red) + (0.504 * input_br->green) + (0.098 * input_br->blue));
    
    float cb_tl = (float)(128 + (-0.148 * input_tl->red) - (0.291 * input_tl->green) + (0.439 * input_tl->blue));
    float cr_tl = (float)(128 + (0.439 * input_tl->red) - (0.368 * input_tl->green) - (0.071 * input_tl->blue));
    
    float cb_tr = (float)(128 + (-0.148 * input_tr->red) - (0.291 * input_tr->green) + (0.439 * input_tr->blue));
    float cr_tr = (float)(128 + (0.439 * input_tr->red) - (0.368 * input_tr->green) - (0.071 * input_tr->blue));

    float cb_bl = (float)(128 + (-0.148 * input_bl->red) - (0.291 * input_bl->green) + (0.439 * input_bl->blue));;
    float cr_bl = (float)(128 + (0.439 * input_bl->red) - (0.368 * input_bl->green) - (0.071 * input_bl->blue));

    float cb_br = (float)(128 + (-0.148 * input_br->red) - (0.291 * input_br->green) + (0.439 * input_br->blue));
    float cr_br = (float)(128 + (0.439 * input_br->red) - (0.368 * input_br->green) - (0.071 * input_br->blue));


    // Calculate Average
    float cb = (cb_tl + cb_tr + cb_bl + cb_br) / 4;
    float cr = (cr_tl + cr_tr + cr_bl + cr_br) / 4;

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

int roung(float input)
{
  if(input > 255)
  {
    return 255;
  } else if (input < 0) 
  {
    return 0;
  } else 
  {
    return (uint8_t) input;
  }
}

rgb_pixel *upsampleYCCtoRGB(ycc_compressed *input, FILE *output, int width)
{
    rgb_pixel *RGB = malloc(sizeof(rgb_pixel));

    float Yp = input->y_tl - 16;
    float Cbp = input->cb - 128;
    float Crp = input->cr - 128;
    RGB->red = roung((1.164 * Yp) + (1.596 * Crp));
    RGB->green = roung((1.164 * Yp) - (0.813 * Crp) - (0.391 * Cbp));
    RGB->blue = roung((1.164 * Yp) + (2.018 * Cbp));

    fwrite(RGB, sizeof(rgb_pixel), 1, output);

    Yp = input->y_tr - 16;
    RGB->red = roung((1.164 * Yp) + (1.596 * Crp));
    RGB->green = roung((1.164 * Yp) - (0.813 * Crp) - (0.391 * Cbp));
    RGB->blue = roung((1.164 * Yp) + (2.018 * Cbp));
    fwrite(RGB, sizeof(rgb_pixel), 1, output);

    fseek(output, width*sizeof(rgb_pixel), SEEK_CUR);

    Yp = input->y_bl - 16;
    RGB->red = roung((1.164 * Yp) + (1.596 * Crp));
    RGB->green = roung((1.164 * Yp) - (0.813 * Crp) - (0.391 * Cbp));
    RGB->blue = roung((1.164 * Yp) + (2.018 * Cbp));
    fwrite(RGB, sizeof(rgb_pixel), 1, output);

    Yp = input->y_br - 16;
    RGB->red = roung((1.164 * Yp) + (1.596 * Crp));
    RGB->green = roung((1.164 * Yp) - (0.813 * Crp) - (0.391 * Cbp));
    RGB->blue = roung((1.164 * Yp) + (2.018 * Cbp));
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

    file_header *header;
    header = bmp_init(fInput);

    // add header to file
    write_header(header, yccOutputFile);
    write_header(header, rgbOutputFile);

    fseek(fInput, header->OffBits, SEEK_SET);

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

    int width = header->Width;
    int height = header->Height;

    for (int i = 0; i < width; i+=2){
        for (int j = 0; j < height; j+=2){

            //Read 4 rgb pixels for downsampling
            fread(input_rbg_tl, sizeof(rgb_pixel), 1, fInput);
            fread(input_rbg_tr, sizeof(rgb_pixel), 1, fInput);
            fseek(fInput, sizeof(rgb_pixel)*width, SEEK_CUR);
            fread(input_rbg_bl, sizeof(rgb_pixel), 1, fInput);
            fread(input_rbg_br, sizeof(rgb_pixel), 1, fInput);
            fseek(fInput, -sizeof(rgb_pixel)*width, SEEK_CUR);

            output_ycc = downsampleRGBtoYCC(input_rbg_tl, input_rbg_tr, input_rbg_bl, input_rbg_br);
            upsampleYCCtoRGB(output_ycc,rgbOutputFile, width);

            //Write YCC
            fwrite(output_ycc, sizeof(ycc_compressed), 1, yccOutputFile);
        }
    }
    fclose(fInput);
    fclose(yccOutputFile);
    fclose(rgbOutputFile);
}