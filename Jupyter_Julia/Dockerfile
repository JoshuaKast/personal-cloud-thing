FROM debian

RUN apt update && \
    apt -y upgrade && \
    apt -y install wget curl julia python3 && \
    curl "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-armv7l.sh" -o "Miniconda.sh" && \
    bash ./Miniconda.sh && \
    conda update conda
