FROM docker.io/espressif/idf-rust:esp32_latest

USER root
COPY . /home/esp/code
WORKDIR /home/esp/code

RUN chown -R esp /home/esp/code
USER esp

# RUN . /home/esp/export-esp.sh
ENV LIBCLANG_PATH /home/esp/.rustup/toolchains/esp/xtensa-esp32-elf-clang/esp-16.0.4-20231113/esp-clang/lib
ENV PATH /home/esp/.rustup/toolchains/esp/xtensa-esp-elf/esp-13.2.0_20230928/xtensa-esp-elf/bin:/home/esp/.rustup/toolchains/esp/xtensa-esp-elf/esp-13.2.0_20230928/xtensa-esp-elf/bin:/home/esp/.rustup/toolchains/esp/xtensa-esp-elf/esp-13.2.0_20230928/xtensa-esp-elf/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/esp/.cargo/bin

RUN cargo build
