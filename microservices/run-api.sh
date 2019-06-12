docker run -d --network web --restart=always --name api -e "-l traefik.backend=api" -e "-l traefik.frontend.rule=Host:api.mundodocker.com.br" -e "-l traefik.port=80" tutum/apache-php
