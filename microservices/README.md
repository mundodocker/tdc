# Instruções para execução do lab


Edite o arquivo traefik.toml trocando o dominio e endereço de e-mail.

Depois crie uma rede na qual os containers vão se comunicar:


``docker network create web``


Depois criamos o containers de traefik:

``docker run -d --name traefik --network web --restart=always -p 8080:8080 -p 80:80 -p 443:443 -v $PWD/traefik.toml:/etc/traefik/traefik.toml:ro -v $PWD/acme:/etc/traefik/acme -v /var/run/docker.sock:/var/run/docker.sock:ro traefik``

Você pode acessar o http://ip-do-servidor:8080 

Para visualizar um dashboard do traefik.


Agora vamos ao primeiro "micro serviço". Vamos criar o container do blog:

``docker run -d --network web --restart=always --name blog -e "-l traefik.backend=blog" -e "-l traefik.frontend.rule=Host:blog.mundodocker.com.br" -e "-l traefik.port=2368" ghost`` 

Agora se você acessar: https://blog.seudominio você verá uma tela inicial do framework Ghost, ou seja, nosso blog está ok :)

O próximo passo agora é criar nossa API marota, vamos testar:

``docker run -d --network web --restart=always --name api -e "-l traefik.backend=api" -e "-l traefik.frontend.rule=Host:api.mundodocker.com.br" -e "-l traefik.port=80" tutum/apache-php``
