- Subir o docker de "desenvolvimento":
    ###
        docker-compose -f docker-compose.yml up -d --build

# Desenvolvimento

## Com Makefile:
- Antes de digitar os comando do make para rodar o projeto, recomendo digitar: `make help` para ter uma noção de todos comando disponíveis.

- Buildar o docker-compose de desenvolvimento:
    ###
        make dev-prod

<br />

- Subir o projeto de desenvolvimento:
    ###
        make run-dev

<br />

- Descer o projeto de desenvolvimento:
    ###
        make drop-dev



## Comandos de Docker-Compose caso não utilize Makefile:

- Subir o docker de desenvolvimento:
    ###
        docker-compose -f docker-compose.yml up -d --build


<br />

- Descer o docker de desenvolvimento:
    ###
        docker-compose -f docker-compose.yml down -v

- Descer o docker de "desenvolvimento":
    ###
        docker-compose -f docker-compose.yml down -v

<br />

- Fazer comandos em manage.py: (OBS: Evite utilizar esses comando em produção... É o obvio, mas não custa avisar)
    ###
        docker-compose -f docker-compose.yml exec web python manage.py < comando >
        
    Exemplo de comandos:
    ###
        docker-compose -f docker-compose.yml exec web python manage.py migrate
    ###
        docker-compose -f docker-compose.yml exec web python manage.py startapp myapp
    ###
        docker-compose -f docker-compose.yml exec web python manage.py collectstatic --noinput