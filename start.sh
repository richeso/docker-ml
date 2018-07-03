winpty docker run -it --rm -p 8888:8888 jupyter/pyspark-notebook
winpty docker run -it --rm -p 8888:8888 jupyter/all-spark-notebook

docker run -d -p 8888:8888 \
    -v /some/host/folder:/etc/ssl/notebook \
    jupyter/all-spark-notebook start-notebook.sh \
    --NotebookApp.keyfile=/etc/ssl/notebook/notebook.key
    --NotebookApp.certfile=/etc/ssl/notebook/notebook.crt
    
Alternatively, you may mount a single PEM file containing both the key and certificate. For example:

docker run -d -p 8888:8888 \
    -v /some/host/folder/notebook.pem:/etc/ssl/notebook.pem \
    jupyter/all-spark-notebook start-notebook.sh \
    --NotebookApp.certfile=/etc/ssl/notebook.pem
    
docker run -d -p 8888:8888 --name myjupyter -v //c/Users/docker/jupyter/home:/home/jovyan jupyter/all-spark-notebook start-notebook.sh
    