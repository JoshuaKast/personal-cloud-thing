
FROM debian:stable-slim

EXPOSE 8888

RUN mkdir /install/ && \
    mkdir /.jupyter/

RUN apt update && \
    apt -y upgrade && \
    apt -y install wget curl julia apt-utils
   
    
RUN apt -y install nano fish npm && \
    npm install -g n && \
    n stable

RUN wget -q https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh && \
    mv Anaconda3-2020.11-Linux-x86_64.sh /install/Anaconda3-2020.11-Linux-x86_64.sh
  
RUN bash /install/Anaconda3-2020.11-Linux-x86_64.sh -b 

RUN export PATH="/root/Aconda3/bin:$PATH" && \
    echo "export PATH=$PATH" > /etc/profile.d/setpath.sh && \
    echo "export PATH=$PATH" > ~/.profile && \
    cat ~/.profile

RUN export PATH="/root/Anaconda3/bin:$PATH" && \
    conda install -y -c conda-forge jupyterlab jupyterlab-git


COPY jupyter_notebook_config.json /root/.jupyter/jupyter_notebook_config.json

COPY setup_julia.jl setup_julia.jl

RUN julia setup_julia.jl && \
    rm setup_julia.jl

CMD jupyter lab --no-browser --allow-root
