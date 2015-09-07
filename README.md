[HTML5 version for StarCraft game](https://github.com/gloomyson/StarCraft) in a Docker container.  

```sh
docker build -t html5sc -f Dockerfile .
docker run -p 80 -d html5sc
```
