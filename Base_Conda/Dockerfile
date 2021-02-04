
FROM debian

EXPOSE 8888

RUN mkdir install && \
    mkdir /root/.jupyter/

RUN apt update && \
    apt -y upgrade && \
    apt -y install wget curl julia apt-utils
   
    
RUN apt -y install nano fish npm && \
    npm install -g n && \
    n stable

RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && \
    cp Miniconda3-latest-Linux-x86.sh /install/Miniconda3-latest-Linux-x86_64.sh
  
RUN bash /install/Miniconda3-latest-Linux-x86_64.sh -b -p

RUN conda install -y -c conda-forge jupyterlab jupyterlab-git


COPY jupyter_notebook_config.json /root/.jupyter/jupyter_notebook_config.json

COPY setup_julia.jl setup_julia.jl

RUN julia setup_julia.jl && \
    rm setup_julia.jl

CMD jupyter lab --no-browser --allow-root
