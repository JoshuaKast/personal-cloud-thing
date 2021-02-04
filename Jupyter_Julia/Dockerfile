FROM debian

EXPOSE 8888

RUN apt update && \
    apt -y upgrade && \
    apt -y install wget curl julia python3 apt-utils
    
RUN apt -y install fish python3-pip libffi-dev && \
    pip3 install jupyter
    
RUN apt -y install nano

RUN pip3 install jupyterlab

RUN pip3 install jupyterlab-git
    
RUN mkdir /root/.jupyter/

COPY jupyter_notebook_config.json /root/.jupyter/jupyter_notebook_config.json

CMD jupyter lab --no-browser --allow-root
