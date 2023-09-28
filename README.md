## Getting Started

- Pull the image from Docker Hub
```
docker pull leonardobringel/ssh-ubuntu
```

- Create a new Container mapping the port 22
```
docker run -p 2222:22
```

- Connect via SSH
```
ssh root@localhost:2222
```
