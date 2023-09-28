## SSH Ubuntu

Simple Ubuntu image with SSH installed and configured to launch on startup.


## Warning

- This image was designed to run only on CPUs with AMR64 architecture.

- To increase security, it is highly recommended to change the default root password by running the following script: ```echo 'root:YOUR_NEW_PASSWORD' | chpasswd```


## Getting Started

- Pull the image from Docker Hub
```
docker pull leonardobringel/ssh-ubuntu
```

- Create a new Container mapping the port 22
```
docker run -p 2222:22 leonardobringel/ssh-ubuntu
```

- Connect via SSH
```
ssh root@localhost:2222
```
