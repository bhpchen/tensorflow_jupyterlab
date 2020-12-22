docker rm tf_jl
docker build -t tensorflow_jupyterlab .
docker run --gpus all -p 8888:8888 -v $(pwd):/workspace/src/ --name tf-jl tensorflow_jupyterlab