FROM docker.io/espressif/idf-rust:esp32_latest

COPY . /home/esp/code

WORKDIR /home/esp/code
RUN ls -la && cargo build