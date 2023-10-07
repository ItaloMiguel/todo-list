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

## Como se conectar no banco de dados via terminal:
- Comando de exemplo para desenvolvimento:
    ###
        docker-compose -f docker-compose.yml exec db psql --host=<exemplo: database-1.amazonaws.rds.***> --port=<porta do banco> --username=<username do banco> --password
<br>

- Nota que no comando `--password` não vai nada, certo? Isso é apenas uma questão de segurança do proprio banco, isso apenas indicar que você vai quere passa uma senha caso você fez um usuário com senha, se você não fez um usuário com senha apenas remova esse comando. Quando rodar perceba que vai ter embaixo `password:` ai nesse lugar você pode colocar o password.