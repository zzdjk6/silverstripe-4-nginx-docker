# How to build?

```bash
docker build -t silverstripe-4-nginx .
```

# How to run?

```bash
docker run \
-it \
-p 80:80 \
-v "$PWD/project":/var/www/project:delegated \
--name silverstripe-nginx  \
silverstripe-4-nginx
```

# How to access the container?

```bash
docker exec -it silverstripe-nginx /bin/bash
```