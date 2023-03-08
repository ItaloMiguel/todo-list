# Projeto afins de estudos.
- Lembre de rodar esse comando para deixar o arquivo .sh executavel `chmod +x app/entrypoint.prod.sh`

## Subir por container docker:
OBS: Se seu docker ainda estiver com `sudo` apenas adicione `sudo` na frente dos comandos que vou deixar.

- Subiir
    ##
        ~$ docker-compose -f docker-compose.prod.yml up -d --build

<br />

- Decer o docker
    ##
        ~$ docker-compose -f docker-compose.prod.yml down -v

<br />

- Fazer comandos em manage.py: (OBS: Evite utilizar esses comando em produção... É o obvio mas não custa avisar)
    ##
        ~$ docker-compose -f docker-compose.prod.yml exec web python manage.py < comando >
    Exemplo de comandos
    ##
        ~$ docker-compose -f docker-compose.prod.yml exec web python manage.py migrate
    ##
        ~$ docker-compose -f docker-compose.prod.yml exec web python manage.py startapp myapp
