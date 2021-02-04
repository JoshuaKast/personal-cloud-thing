FROM debian

EXPOSE 8888

RUN apt update && \
    apt -y upgrade && \
    apt -y install wget curl julia python3 apt-utils
    
RUN apt -y install fish python3-pip libffi-dev && \
    pip3 install jupyter

RUN pip3 install jupyterlab
    
RUN mkdir /root/.jupyter/ && \
    echo {"NotebookApp":{"password":"argon2:$argon2id$v=19$m=10240,t=10,p=8$CjSA+mjmoxcyhaAMvfhUsw$jwIWExWs8GD9ovJYmksYgQ"}} > /root/.jupyter/jupyter_notebook_config.json
    
CMD jupyter lab --no-browser --allow-root
