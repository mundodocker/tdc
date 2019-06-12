docker build -t "site" .
docker run -d --network web --restart=always --name site -e "-l traefik.backend=site" -e "-l traefik.frontend.rule=Host:site.mundodocker.com.br" -e "-l traefik.port=80" site
