docker volume rm companyA_volume
docker rm companyA_tf
docker volume create --driver local --opt type=nfs --opt device=:/homes/companyA --opt o=addr=192.168.1.232,rw,nfsvers=4 companyA_volume 
docker run --gpus all --cpus="1.5" -p 8888:8888 -v companyA_volume:/workspace/src/ --name companyA_tf tensorflow_jupyterlab
