#!/bin/bash

sudo qemu-system-riscv64 -nographic -machine virt -s \
     -kernel ./Image -append "root=/dev/vda ro console=ttyS0" \
     -drive file=./rootfs.img,format=raw,id=hd0 \
     -device virtio-blk-device,drive=hd0 \
     -bios default
