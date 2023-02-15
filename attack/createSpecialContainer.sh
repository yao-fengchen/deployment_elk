echo "createSpecialContainer..." >&2
echo "create container with sensitive mount" >&2
docker run -itd --name with_docker_sda1 -v /dev/sda1:/home/mnt ubuntu
sleep 5

echo "create container with special port mapping" >&2
docker run -itd -p 8080:80 -it ubuntu
