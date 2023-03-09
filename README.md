# XPRA Firefox
run Firefox in Docker XPRA Session
```
docker build . -t xpra/firefox

docker run --net bridge -itd --name foad --shm-size 2g -p 9898:9898 xpra/firefox
```
![xpra](https://user-images.githubusercontent.com/61406816/212017131-df10c103-7163-4712-98e4-175a1d9b47c3.jpg)
