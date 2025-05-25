
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
docker compose up -d
```

```sh
docker compose down
```

