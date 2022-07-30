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

file_header *read_header(FILE *fp)
{
    file_header *header = malloc(sizeof(struct file_header));

    fread(&header->Type, 2, 1, fp);
    fread(&header->FileSize, 4, 1, fp);
    fread(&header->Reserved1, 2, 1, fp);
    fread(&header->Reserved2, 2, 1, fp);
    fread(&header->OffBits, 4, 1, fp);

    fread(&header->Size, 4, 1, fp);
    fread(&header->Width, 4, 1, fp);
    fread(&header->Height, 4, 1, fp);
    fread(&header->Planes, 2, 1, fp);
    fread(&header->BitCount, 2, 1, fp);
    fread(&header->Compression, 4, 1, fp);
    fread(&header->SizeImage, 4, 1, fp);
    fread(&header->XPixelsPerMeter, 4, 1, fp);
    fread(&header->YPixelsPerMeter, 4, 1, fp);
    fread(&header->ClrUsed, 4, 1, fp);
    fread(&header->ClrImportant, 4, 1, fp);
    return header;
}

void write_header(file_header *header, FILE *output_file)
{
    fwrite(&header->Type, 2, 1, output_file);
    fwrite(&header->FileSize, 4, 1, output_file);
    fwrite(&header->Reserved1, 2, 1, output_file);
    fwrite(&header->Reserved2, 2, 1, output_file);
    fwrite(&header->OffBits, 4, 1, output_file);

    fwrite(&header->Size, 4, 1, output_file);
    fwrite(&header->Width, 4, 1, output_file);
    fwrite(&header->Height, 4, 1, output_file);
    fwrite(&header->Planes, 2, 1, output_file);
    fwrite(&header->BitCount, 2, 1, output_file);
    fwrite(&header->Compression, 4, 1, output_file);
    fwrite(&header->SizeImage, 4, 1, output_file);
    fwrite(&header->XPixelsPerMeter, 4, 1, output_file);
    fwrite(&header->YPixelsPerMeter, 4, 1, output_file);
    fwrite(&header->ClrUsed, 4, 1, output_file);
    fwrite(&header->ClrImportant, 4, 1, output_file);
}

ycc_compressed *downsampleRGBtoYCC(rgb_pixel *input_tl, rgb_pixel *input_tr, rgb_pixel *input_bl, rgb_pixel *input_br)
{
    ycc_compressed *YCC = malloc(3);

    // extract ys and cs
    int y_tl = (16 + (((16843 * input_tl->red) + (33030 * input_tl->green) + (6423 * input_tl->blue)) >> 16));
    int y_tr = (16 + (((16843 * input_tr->red) + (33030 * input_tr->green) + (6423 * input_tr->blue)) >> 16));
    int y_bl = (16 + (((16843 * input_bl->red) + (33030 * input_bl->green) + (6423 * input_bl->blue)) >> 16));
    int y_br = (16 + (((16843 * input_br->red) + (33030 * input_br->green) + (6423 * input_br->blue)) >> 16));

    int cb_tl = (128 + (((-9699 * input_tl->red) - (19071 * input_tl->green) + (28770 * input_tl->blue)) >> 16));
    int cr_tl = (128 + (((28770 * input_tl->red) - (24117 * input_tl->green) - (4653 * input_tl->blue)) >> 16));

    int cb_tr = (128 + (((-9699 * input_tr->red) - (19071 * input_tr->green) + (28770 * input_tr->blue)) >> 16));
    int cr_tr = (128 + (((28770 * input_tr->red) - (24117 * input_tr->green) - (4653 * input_tr->blue)) >> 16));

    int cb_bl = (128 + (((-9699 * input_bl->red) - (19071 * input_bl->green) + (28770 * input_bl->blue)) >> 16));
    int cr_bl = (128 + (((28770 * input_bl->red) - (24117 * input_bl->green) - (4653 * input_bl->blue)) >> 16));

    int cb_br = (128 + (((-9699 * input_br->red) - (19071 * input_br->green) + (28770 * input_br->blue)) >> 16));
    int cr_br = (128 + (((28770 * input_br->red) - (24117 * input_br->green) - (4653 * input_br->blue)) >> 16));

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

int myRound(register int input)
{
    if (input > 255)
    {
        return 255;
    }
    else if (input < 0)
    {
        return 0;
    }
    else
    {
        return (uint8_t)input;
    }
}

void *upsampleYCCtoRGB(ycc_compressed *input, FILE *output, int width)
{
    rgb_pixel *RGB = malloc(3);

    int Yp = 4882170 * (input->y_tl - 16);
    int Crp = input->cr - 128;
    int Cbp = input->cb - 128;
    int Crp1 = (6694109 * Crp);
    int Crp2 = (3409969 * Crp);
    int Cbp1 = (1639973 * Cbp);
    int Cbp2 = (8464105 * Cbp);

    RGB->red = myRound((Yp + Crp1) >> 22);
    RGB->green = myRound((Yp - Crp2 - Cbp1) >> 22);
    RGB->blue = myRound((Yp + Cbp2) >> 22);

    fwrite(RGB, 3, 1, output);

    Yp = 4882170 * (input->y_tr - 16);
    RGB->red = myRound((Yp + Crp1) >> 22);
    RGB->green = myRound((Yp - Crp2 - Cbp1) >> 22);
    RGB->blue = myRound((Yp + Cbp2) >> 22);
    fwrite(RGB, 3, 1, output);

    fseek(output, width * 3, SEEK_CUR);

    Yp = 4882170 * (input->y_bl - 16);
    RGB->red = myRound((Yp + Crp1) >> 22);
    RGB->green = myRound((Yp - Crp2 - Cbp1) >> 22);
    RGB->blue = myRound((Yp + Cbp2) >> 22);
    fwrite(RGB, 3, 1, output);

    Yp = 4882170 * (input->y_br - 16);
    RGB->red = myRound((Yp + Crp1) >> 22);
    RGB->green = myRound((Yp - Crp2 - Cbp1) >> 22);
    RGB->blue = myRound((Yp + Cbp2) >> 22);
    fwrite(RGB, 3, 1, output);
    fseek(output, -width * 3, SEEK_CUR);
}

int main(int argc, char *argv[])
{

    // exit program if not enough or to much input files was supplied.
    // if (argc != 4)
    // {
    //     printf("Please provide the correct arguments for RGB to YCC conversion.\n");
    //     exit(1);
    // }

    // open file in binary read mode
    FILE *fInput;
    if ((fInput = fopen("images/shapes.bmp", "rb")) == NULL)
    {
        printf("Error! Opening input file\n");
        exit(1);
    }

    // open files for writing the output
    FILE *yccOutputFile;
    FILE *rgbOutputFile;
    if ((yccOutputFile = fopen("output/yccout.bmp", "wb")) == NULL)
    {
        printf("Error! Opening Output file\n");
        exit(1);
    }
    if ((rgbOutputFile = fopen("output/rgbout.bmp", "wb")) == NULL)
    {
        printf("Error! Opening Output file\n");
        exit(1);
    }

    file_header *header;
    header = read_header(fInput);

    // add header to file
    write_header(header, yccOutputFile);
    write_header(header, rgbOutputFile);

    fseek(fInput, header->OffBits, SEEK_SET);

    // initialize data size
    rgb_pixel *input_rbg_tl;
    rgb_pixel *input_rbg_tr;
    rgb_pixel *input_rbg_bl;
    rgb_pixel *input_rbg_br;

    input_rbg_tl = malloc(3);
    input_rbg_tr = malloc(3);
    input_rbg_bl = malloc(3);
    input_rbg_br = malloc(3);

    ycc_compressed *output_ycc;
    rgb_pixel *output_rgb;

    // int iterations = header->Width * header->Height;
    int width = header->Width;
    int height = header->Height;

    for (register int i = width; i != 0; i -= 4)
    {
        for (register int j = height; j != 0; j -= 2)
        {
            // Read 4 rgb pixels for downsampling
            fread(input_rbg_tl, 3, 1, fInput);
            fread(input_rbg_tr, 3, 1, fInput);
            fseek(fInput, 3 * width, SEEK_CUR);
            fread(input_rbg_bl, 3, 1, fInput);
            fread(input_rbg_br, 3, 1, fInput);
            fseek(fInput, -3 * width, SEEK_CUR);

            output_ycc = downsampleRGBtoYCC(input_rbg_tl, input_rbg_tr, input_rbg_bl, input_rbg_br);
            upsampleYCCtoRGB(output_ycc, rgbOutputFile, width);

            // Write YCC
            fwrite(output_ycc, 6, 1, yccOutputFile);

            // Read 4 rgb pixels for downsampling
            fread(input_rbg_tl, 3, 1, fInput);
            fread(input_rbg_tr, 3, 1, fInput);
            fseek(fInput, 3 * width, SEEK_CUR);
            fread(input_rbg_bl, 3, 1, fInput);
            fread(input_rbg_br, 3, 1, fInput);
            fseek(fInput, -3 * width, SEEK_CUR);

            output_ycc = downsampleRGBtoYCC(input_rbg_tl, input_rbg_tr, input_rbg_bl, input_rbg_br);
            upsampleYCCtoRGB(output_ycc, rgbOutputFile, width);

            // Write YCC
            fwrite(output_ycc, 6, 1, yccOutputFile);
        }
    }
    fclose(fInput);
    fclose(yccOutputFile);
    fclose(rgbOutputFile);

    return 0;
}