# XPRA Firefox
run Firefox in Docker XPRA Session

docker build . -t Xpra/firefox

docker run --net bridge -itd --name foad --shm-size 2g -p 9898:9898 Xpra/firefox

![Screenshot from 2023-01-12 11-58-35](https://user-images.githubusercontent.com/61406816/212016316-e7012fe3-40ae-4aad-9b3b-964a1304ffca.png)
