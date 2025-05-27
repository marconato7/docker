
```sh
docker build -t my-wp-image:latest .
```

```sh
docker run -d --name mysql-container -e MYSQL_ROOT_PASSWORD=example -e MYSQL_DATABASE=wordpress -e MYSQL_PASSWORD=example mysql:latest
```

```sh
docker run -d --name wordpress-container \
-e WORDPRESS_DB_HOST=mysql-container \
-e WORDPRESS_DB_USER=root \
-e WORDPRESS_DB_PASSWORD=example \
-e WORDPRESS_DB_NAME=wordpress \
-p 8080:80 \
--link  mysql-container \
my-wp-image:latest
```

```sh
docker compose up -d --build --force
```

```sh
docker compose down -t 30
```

```sh
docker compose start
```

```sh
docker compose stop -t 5
```

```sh
docker compose restart -t 5
```

```sh
docker compose ps -a
```

```sh
docker compose ps --services
```

```sh
docker compose ls -a
```

```sh
docker compose images
```

```sh
docker compose images -q
```

```sh
docker compose build
```

```sh
docker compose build --pull
```

```sh
docker compose build -push
```

```sh
docker compose build --no-cache
```

```sh
docker compose build --build-arg WORDPRESS_SITE_NAME="Shelley Benhoff's Blog"
```

```sh
docker compose pull
```

```sh
docker compose pull --ignore-buidable
```

```sh
docker compose pull --include-deps
```

```sh
docker compose pull --ignore-pull-failures
```

```sh
docker compose pull -q
```

```sh
docker compose push
```

```sh
docker compose push --include-deps
```

```sh
docker compose push --ignore-push-failures
```

```sh
docker compose push -q
```

```sh
docker compose create
```

```sh
docker compose create --build
```

```sh
docker compose create --no-build
```

```sh
docker compose create --force-recreate
```

```sh
docker compose create --no-recreate
```

```sh
docker compose create --pull always
docker compose create --pull missing
docker compose create --pull never
docker compose create --pull build
```

```sh
docker compose create --quiet-pull
```

```sh
docker compose run -d --build --rm --remove-orphans -e WORDPRESS_DB_PASSWORD=example --name wordpress-test --no-deps wordpress bash
```

