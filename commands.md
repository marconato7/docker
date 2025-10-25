```sh
docker run hello-world
```

```sh
docker ps
```

```sh
docker ps -a
docker ps --all
```

```sh
docker container create hello-world:linux
```

```sh
docker container start 7e61004bf961aced9f5a5497506b14dd8242d374c9dec3bbcb80db1c54d38eb4
```

```sh
docker logs 7e61004bf961aced9f5a5497506b14dd8242d374c9dec3bbcb80db1c54d38eb4
```

```sh
docker container start 7e61004bf961aced9f5a5497506b14dd8242d374c9dec3bbcb80db1c54d38eb4 --attach
```

```sh
docker run hello-world:linux
```

```sh
docker build -t get-current-time .
```

```sh
docker run get-current-time
```

```sh
docker exec 579d76cd6e2b date
```

```sh
docker exec -it 579d76cd6e2b bash
```

```sh
docker stop 579d76cd6e2b
```

```sh
docker stop -t 0 e303a31613ea
```

```sh
docker rm 579d76cd6e2b
```

```sh
docker rm -f 579d76cd6e2b
```

```sh
docker ps -aq | xargs docker rm -f
```

```sh
docker images
```

```sh
docker images -q | xargs docker rmi -f
```

```sh
docker build -t web-server -f .\web-server.Dockerfile .
```

```sh
docker run -p 5000:5000 web-server
```

```sh
docker run -it -v ./docker/node:/usr/src/app -w /usr/src/app node bash
```

```sh
docker run --rm --entrypoint bash -v ./docker/node:/usr/src/app -w /usr/src/app node -c "npm init -fy"
```

```sh
docker login
```

```sh
docker tag image-name namespace/image-name:0.0.1
```

```sh
docker push namespace/image-name:0.0.1
```
