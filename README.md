# Projeto afins de estudos.
- Lembre de rodar esse comando para deixar o arquivo .sh executavel `chmod +x app/entrypoint.prod.sh`

## Subir por container docker:
OBS: Se seu docker ainda estiver com `sudo` apenas adicione `sudo` em frente de todo comando relacionado a docker.

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

## Como se conectar no banco de dados via terminal (Não sei me conectar via interface, me desculpa):
OBS: Tem um pg-admin subindo com o `docker-compose.prod.yml` mas não está funcionando e ainda não sei pq...
- Como não tenho postgresslq em meu computador, costumo subir ele no docker e me conectar (como fiz agora no docker-compose). Para se conectar utilize esses comando (Obviamente não vou passar as info do meu banco...)
    ##
        docker-compose -f docker-compose.prod.yml exec db psql --host=<exemplo: database-1.amazonaws.rds.***> --port=<porta do banco> --username=<username do banco> --password
    
    - Nota que no --password não vai nada, certo? Isso é apenas uma questão de segurança do proprio banco, isso apenas indicar que você vai quere passa uma senha caso você fez um ususario com senha. Quando rodar perceba que vai ter embaixo `password:` ai nesse lugar você pode colocar o password. 
