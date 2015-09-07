[HTML5 version for StarCraft game](https://github.com/gloomyson/StarCraft) by @gloomyson, in a Docker container.  

Local build:
```sh
docker build -t starcraft -f Dockerfile .
docker run -p 80 -d starcraft
```

Automated build:
```sh
docker run -p 80 -d konstruktoid/starcraft
```
