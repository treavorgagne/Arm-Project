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

typedef struct ycc_image {
    ycc_pixel *data;
} ycc_image;

typedef struct rgb_image { 
    rgb_pixel *data;
} rgb_image;
 
ycc_pixel convertRGBtoYCC(uint8_t R, uint8_t G, uint8_t B){
    ycc_pixel YCC;

    float y  = (float)(16 + (0.257 * R) +( 0.587 * G) + (0.098 * B));
    float cb = (float)(128 + (-0.148 * R) - (0.291 * G) + (0.439 * B));
    float cr = (float)(128 + (0.439 * R) - (0.368 * G) - (0.071 * B));

    YCC.y = y;
    YCC.cb = cb;
    YCC.cr = cr;

    return YCC;
}



int main()
{
    // open file in binary read mode
    FILE *fptr;
    if ((fptr = fopen("./test-input.bmp","rb")) == NULL){
       printf("Error! opening file");
       exit(1);
   }

    // skip header of jpg file
    int header_size = 54;
    // fread(, header_size, header_size, fptr);
    fseek( fptr, header_size, SEEK_SET );
    // TODO get width and heigth from header
    
    int width = 400;
    int height = 300;

    // initialize data size 
    int image_size = width*height;
    rgb_image *input_data;
    input_data = malloc(sizeof(rgb_image));
    input_data->data = malloc(sizeof(rgb_pixel)*image_size);

    ycc_image *output_data;
    output_data = malloc(sizeof(ycc_image));
    output_data->data = malloc(sizeof(ycc_pixel)*image_size);
    
    // read all rgb data into input_data
    fread(input_data->data, sizeof(rgb_pixel), image_size, fptr);
    
    for (int i = 0; i < width; i++){
        for (int j = 0; j < height; j++){
            int offset = i*width;
            output_data->data[offset+j] = convertRGBtoYCC(input_data->data[offset+j].red,input_data->data[offset+j].green,input_data->data[offset+j].blue);
            printf("[%d][%d] YCC: %f %f %f\n",i,j, output_data->data[offset+j].y, output_data->data[offset+j].cb, output_data->data[offset+j].cr);
        }
    }

    // convert

    // todo output

}