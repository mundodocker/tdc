docker run -d --name traefik --network web --restart=always -p 8080:8080 -p 80:80 -v $PWD/traefik.toml:/etc/traefik/traefik.toml:ro -v /var/run/docker.sock:/var/run/docker.sock:ro traefik
