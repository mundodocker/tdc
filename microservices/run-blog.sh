docker run -d --network web --restart=always --name blog -e "-l traefik.backend=blog" -e "-l traefik.frontend.rule=Host:blog.mundodocker.com.br" -e "-l traefik.port=80" wordpress
