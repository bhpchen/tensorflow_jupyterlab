docker volume rm companyB_volume
docker rm companyB_tf
docker volume create --driver local --opt type=nfs --opt device=:/homes/companyB --opt o=addr=192.168.1.232,rw,nfsvers=4 companyB_volume 
docker run --gpus all -p 8888:8888 -v companyB_volume:/workspace/src/ --name companyB_tf tensorflow_jupyterlab
