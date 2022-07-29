# SENG440-Arm-Project

C Arm Project. Color Space Conversion RGB to YCC.

# Getting Started

To run the project use the following:

```
qemu-system-arm -m 2G -smp 1 -hda Fedora-Minimal-armhfp-29-1.2-sda.qcow2 -machine virt-2.11 -kernel vmlinuz-4.18.16-300.fc29.armv7hl -initrd initramfs-4.18.16-300.fc29.armv7hl.img  -append "console=ttyAMA0 rw root=LABEL=_/ rootwait ipv6.disable=1" -nographic
```

Git:

```
https://github.com/treavorgagne/Arm-Project.git
```

To compile c and output assembly (use the following)

```
arm-linux-gcc -static -S addition.c
```

To Run Test Bench call the following in the root directory of the repo.

```
python(3) test_bench.py
```

# Gprof Process

Downsampling with discarding

```
gcc -marm -O0 -pg unoptimized.c -o unopt.out
./unopt.out
gprof -p -b unopt.out gmon.out > unoptimized-discard-gprof.txt

gcc -marm -O0 -pg optimized.c -o opt.out
./opt.out
gprof -p -b opt.out gmon.out > optimized-discard-gprof.txt
```

Downsampling with Averaging

```
gcc -marm -O0 -pg unoptimized.c -o unopt.out
./unopt.out
gprof -p -b unopt.out gmon.out > unoptimized-gprof.txt

gcc -marm -O0 -pg optimized.c -o opt.out
./opt.out
gprof -p -b opt.out gmon.out > optimized-gprof.txt
```
