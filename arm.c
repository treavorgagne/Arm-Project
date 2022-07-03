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
    uint8_t y;
    uint8_t cb;
    uint8_t cr;
} ycc_pixel;

typedef struct bmp_header {
  //File header
  uint16_t bfType;
  uint32_t bfSize;
  uint16_t bfReserved1;
  uint16_t bfReserved2;
  uint32_t bfOffBits;

  //Image header
  uint32_t biSize;;
  uint32_t biWidth;
  uint32_t biHeight;
  uint16_t biPlanes;
  uint16_t biBitCount;
  uint32_t biCompression;
  uint32_t biSizeImage;
  uint32_t biXPelsPerMeter;
  uint32_t biYPelsPerMeter;
  uint32_t biClrUsed;
  uint32_t biClrImportant;

} bmp_header;
 
bmp_header* bmp_init(FILE* fp){

    bmp_header *header = malloc(sizeof(struct bmp_header));

    fread(&header->bfType, sizeof(uint16_t), 1, fp);
    fread(&header->bfSize, sizeof(uint32_t), 1, fp);
    fread(&header->bfReserved1, sizeof(uint16_t), 1, fp);
    fread(&header->bfReserved2, sizeof(uint16_t), 1, fp);
    fread(&header->bfOffBits, sizeof(uint32_t), 1, fp);

    fread(&header->biSize, sizeof(uint32_t), 1, fp);
    fread(&header->biWidth, sizeof(uint32_t), 1, fp);
    fread(&header->biHeight, sizeof(uint32_t), 1, fp);
    fread(&header->biPlanes, sizeof(uint16_t), 1, fp);
    fread(&header->biBitCount, sizeof(uint16_t), 1, fp);
    fread(&header->biCompression, sizeof(uint32_t), 1, fp);
    fread(&header->biSizeImage, sizeof(uint32_t), 1, fp);
    fread(&header->biXPelsPerMeter, sizeof(uint32_t), 1, fp);
    fread(&header->biYPelsPerMeter, sizeof(uint32_t), 1, fp);
    fread(&header->biClrUsed, sizeof(uint32_t), 1, fp);
    fread(&header->biClrImportant, sizeof(uint32_t), 1, fp);
    return header;
}

ycc_pixel* convertRGBtoYCC(rgb_pixel *input){
    ycc_pixel *YCC = malloc(sizeof(ycc_pixel));

    float y  = (float)(16 + (0.257 * input->red) +( 0.504 * input->green) + (0.098 * input->blue));
    float cb = (float)(128 + (-0.148 * input->red) - (0.291 * input->green) + (0.439 * input->blue));
    float cr = (float)(128 + (0.439 * input->red) - (0.368 * input->green) - (0.071 * input->blue));

    YCC->y = (uint8_t) y;
    YCC->cb = (uint8_t) cb;
    YCC->cr = (uint8_t) cr;

    return YCC;
}

rgb_pixel convertYCCtoRGB(float Y, float Cb, float Cr){
    rgb_pixel RGB;
    float Yp = Y - 16;
    float Cbp = Cb - 128;
    float Crp = Cr - 128;
    uint8_t r = (uint8_t) ((1.164 * Yp) + (1.596*Crp));
    uint8_t g = (uint8_t) ((1.164 * Yp) - (0.813*Crp) - (0.391*Cbp));
    uint8_t b = (uint8_t) ((1.164 * Yp) + (2.018*Cbp));
    
    printf("Reverted RGB: %d %d %d\n", r, g, b);
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
    if ((fInput = fopen("./dog10.bmp","rb")) == NULL){
       printf("Error! Opening input file");
       exit(1);
    }

    FILE *fOutput;
    if ((fOutput = fopen("./test-output.bmp","wb")) == NULL){
       printf("Error! Opening Output file");
       exit(1);
    }

    bmp_header *file_header;
    file_header = bmp_init(fInput);
    printf("Width, Height: %d, %d\n", file_header->biWidth, file_header->biHeight);

    // add header to file
    int header_size = 54;
    char* buffer[54];  
    fread(buffer, file_header->bfOffBits, 1, fInput);
    fwrite(file_header, file_header->bfOffBits, 1, fOutput);
    fseek (fOutput, file_header->bfOffBits, SEEK_SET);
    
    // fseek( fInput, header_size, SEEK_SET );
    // // TODO get width and heigth from header
    
    // int width = file_header->biWidth;
    // int height = file_header->biHeight;

    // // initialize data size 
    // rgb_pixel *input_rbg;
    // rgb_pixel *input_rbg_tr;
    // rgb_pixel *input_rbg_bl;
    // rgb_pixel *input_rbg_br;
    // input_rbg = malloc(sizeof(rgb_pixel));

    // ycc_pixel *output_ycc;
    
    // printf("Size of RGB: %d\n", sizeof(rgb_pixel) );
    // for (int i = 0; i < width; i++){
    //     for (int j = 0; j < height; j++){

    //         fread(input_rbg, sizeof(rgb_pixel), 1, fInput);
    //         // fread(input_rbg_tr, sizeof(rgb_pixel), 1, fInput);
    //         // fseek( fInput, width - 2, SEEK_CUR );
    //         // fread(input_rbg_bl, sizeof(rgb_pixel), 1, fInput);
    //         // fread(input_rbg_br, sizeof(rgb_pixel), 1, fInput);
    //         // fseek( fInput, (-width), SEEK_CUR );
    //         output_ycc = convertRGBtoYCC(input_rbg);
    //         if (i == 2 && j == 50){
    //             //Test pixel output
    //             printf("Pixel [%d][%d]: %d %d %d\n", i , j, input_rbg->red, input_rbg->green, input_rbg->blue);
    //             printf("Converted [%d][%d] YCC: %d %d %d\n",i, j, output_ycc->y, output_ycc->cb, output_ycc->cr);
    //             convertYCCtoRGB(output_ycc->y, output_ycc->cb, output_ycc->cr);
    //         }

    //         // ouput to file
    //         fwrite(output_ycc, sizeof(ycc_pixel), 1, fOutput);
    //     }
    // }

    // todo output

    fclose(fInput);
    fclose(fOutput);
}