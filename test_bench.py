from os import listdir
from os.path import isfile, join
from subprocess import call
import time

def main():
    print("Start Test Bench for RBG to YCC")
    
    inputFiles = [f for f in listdir('./images') if isfile(join('./images', f))]
    print("inputfiles: ",inputFiles)

    call(["rm", "-f", "./output/*"])
    call(["gcc", "-o", "unoptimized", "unoptimized2.c"])
    call(["gcc", "-marm" , "-O3",  "-o", "optimized", "optimized.c"])
    

    t0 = time.time()
    for input in inputFiles:
        fileInput = './images/'+input
        yccOutput = './output/YCC_output_unopt_'+input
        rgbOutput = './output/RGB_output_unopt_'+input
        call(["./unoptimized", fileInput , yccOutput, rgbOutput])
    t1 = time.time()
    print("Unoptimized performance: ", t1-t0)

    t2 = time.time()
    for input in inputFiles:
        fileInput = './images/'+input
        yccOutput = './output/YCC_output_opt_'+input
        rgbOutput = './output/RGB_output_opt_'+input
        call(["./optimized", fileInput, yccOutput, rgbOutput])
    t3 = time.time()
    print("Optimized performance: ", t3-t2)
    
    print("End Test Bench for RBG to YCC")

if __name__ == '__main__':
    main()