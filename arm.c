#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <unistd.h>

uint8_t* convertRGBtoYCC(uint8_t R, uint8_t G, uint8_t B){
    uint8_t* YCC = (uint8_t*) malloc(3 * sizeof(uint8_t));
    
    uint8_t y  = (uint8_t)( 0.299   * R + 0.587   * G + 0.114   * B);
    uint8_t cb = (uint8_t)(-0.16874 * R - 0.33126 * G + 0.50000 * B);
    uint8_t cr = (uint8_t)( 0.50000 * R - 0.41869 * G - 0.08131 * B);

    YCC[0] = y;
    YCC[1] = cb;
    YCC[2] = cr;

    return YCC;
}

typedef struct rgb_pixel {
    uint8_t red;
    uint8_t green;
    uint8_t blue;
} rgb_pixel;

typedef struct image_data { 
    rgb_pixel *data;
} image_data;
 
int main()
{
    // open file in binary read mode
    FILE *fptr;
    if ((fptr = fopen("./test-input.bmp","rb")) == NULL){
       printf("Error! opening file");
       exit(1);
   }

    // skip header of jpg file
    fseek( fptr, 54, SEEK_SET );
    // TODO get width and heigth from header
    
    int width = 400;
    int height = 300;

    // initialize data size 
    int image_size = width*height;
    image_data *input_data;
    input_data = malloc(sizeof(image_data));
    input_data->data = malloc(sizeof(rgb_pixel)*image_size);

    // read all rgb data into input_data
    fread(input_data->data, sizeof(rgb_pixel), image_size, fptr);
    
    for (int i = 0; i < width; i++){
        for (int j = 0; j < height; j++){
            int offset = i*width;
            convertRGBtoYCC(input_data->data[offset+j].red, input_data->data[offset+j].green, input_data->data[offset+j].blue)
            // printf("[%d][%d] RGB: %d %d %d\n",i,j, input_data->data[offset+j].red, input_data->data[offset+j].green, input_data->data[offset+j].blue);
        }
    }

    // convert

    // todo output

}