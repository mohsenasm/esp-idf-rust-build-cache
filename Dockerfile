FROM docker.io/espressif/idf-rust:esp32_latest

USER root
COPY . /home/esp/code

WORKDIR /home/esp/code
RUN . /home/esp/export-esp.sh
RUN cargo build
