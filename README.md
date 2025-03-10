# RMK 

RMK is a feature-rich and easy-to-use keyboard firmware.

## Use the template

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
