# RMK 

The [Ferris Sweep](https://github.com/davidphilipbarr/Sweep) already has the Rust mascot on the PCB,
so its only fitting to pair it with [RMK](https://github.com/HaoboGu/rmk),
a Rust keyboard firmware!

## Flash to your Ferris

Note: This repo is specifically for a wired ferris sweep using a pair of [Elite-Pi](https://docs.keeb.io/elite-pi-guide) MCUs.
It should be easy enough to swap this for other MCUs, but you may need to mess with the matrix definitions to set the pin mapping,
change the chipset settings, and add a bluetooth section (if using nice!nanos).

1. Build the firmware

   ```shell
   cargo build --release
   ```

2. Flash using USB

   You can use `elf2uf2-rs` to flash your rp2040 firmware via USB.

   1. Install `elf2uf2-rs`: `cargo install elf2uf2-rs`
   2. Connect your rp2040 board holding the BOOTSEL key, ensure that rp's USB drive appears
   3. Flash
      ```shell
      cargo run --release
      ```
      Then, you will see logs like if everything goes right:
      ```shell
      Finished release [optimized + debuginfo] target(s) in 0.21s
      Running `elf2uf2-rs -d 'target\thumbv6m-none-eabi\release\rmk-rp2040'`
      Found pico uf2 disk G:\
      Transfering program to pico
      173.00 KB / 173.00 KB [=======================] 100.00 % 193.64 KB/s  
      ```
