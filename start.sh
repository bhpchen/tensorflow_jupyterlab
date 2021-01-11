docker stop tf_latest
docker rm tf_latest
docker volume rm clientA_volume
docker volume create --driver local --opt type=nfs --opt device=:/homes/clientA/ --opt o=addr=192.168.1.232,rw,nfsvers=4 clientA_volume 
docker run --gpus all -p 8888:8888 -v clientA_volume:/workspace/src/ -w /workspace/src/ --name tf_latest tf_latest
