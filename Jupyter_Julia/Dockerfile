FROM debian

RUN apt update && \
    apt -y upgrade && \
    apt -y install julia python3 && \
    curl "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-armv7l.sh" -o "Miniconda.sh" && \
    sh ./Miniconda.sh && \
    conda update conda
