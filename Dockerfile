FROM docker.io/espressif/idf-rust:esp32_latest

USER root
COPY . /home/esp/code
WORKDIR /home/esp/code

SHELL ["/bin/bash", "-c"] 

RUN echo $LIBCLANG_PATH
RUN echo $PATH
RUN source /home/esp/export-esp.sh
RUN echo $LIBCLANG_PATH
RUN echo $PATH
RUN cargo build
