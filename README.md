# XPRA Firefox
run Firefox in Docker XPRA Session

docker build . -t Xpra/firefox
docker run --net bridge -itd --name foad --shm-size 2g -p 9898:9898 Xpra/firefox
