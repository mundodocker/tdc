Repositório de exemplo para multi-stage build usando Docker \o/.

# GO

## Sem Multi-Stage

Clone o repostiório, e vá até o diretório ``go/normal`` e execute o ``docker build -t "go:1.0" .``


## Com Multi-Stage

Clone o repostiório, e vá até o diretório ``go/multi`` e execute o ``docker build -t "go:2.0" .``

Depois isso, compare o tamanho das imagens ;)

# PYTHON

## Sem Multi-Stage
Vá até o diretório ``python/normal`` e execute o ``docker build -t "python:1.0" .``

## Com Multi-Stage
Vár até o diretório ``python/multi`` e execute o ``docker build -t "python:2.0" .`` 
