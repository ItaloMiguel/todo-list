# Projeto afins de estudos.
- Lembre de rodar esse comando para deixar o arquivo .sh executavel `chmod +x app/entrypoint.prod.sh`

## Ferramentas utilizada
- Sistema operacional: Arch Linux
- Dockerfile
- Docker-compose
- ShellScript
- VsCode
- Nginx
- Postgressql

Todos comando ensinando/utilizados aqui vão ser por terminal, mais precisamente do linux distro Arch. Caso estiver utilizando windows, utilize o Git Bash ( Ou formata essa bomba de windows e coloca um linux ubuntu 22.04LTS que já é mil vezes melhor para mexer com docker, nginx e shellscript ). Existe a opção de utilizar WSL 2 (recomendo bastante), [video](https://youtu.be/sjrW74Hx5Po?si=4dxIjNW7zQGszeNV) de como organizar seu ambiente de desenvolvimento.

## Subir por container docker:
OBS: Se seu docker ainda estiver com `sudo` apenas adicione `sudo` em frente de todo comando relacionado a docker.

- Subir o docker de "produção":
    ###
        docker-compose -f docker-compose.prod.yml up -d --build

- Subir o docker de "desenvolvimento":
    ###
        docker-compose -f docker-compose.yml up -d --build

<br />

- Descer o docker de "produção":
    ###
        docker-compose -f docker-compose.prod.yml down -v

- Descer o docker de "desenvolvimento":
    ###
        docker-compose -f docker-compose.yml down -v

<br />

- Fazer comandos em manage.py: (OBS: Evite utilizar esses comando em produção... É o obvio mas não custa avisar)
    ###
        docker-compose -f docker-compose.prod.yml exec web python manage.py < comando >
    Exemplo de comandos
    ###
        docker-compose -f docker-compose.prod.yml exec web python manage.py migrate
    ###
        docker-compose -f docker-compose.prod.yml exec web python manage.py startapp myapp
    ###
        docker-compose -f docker-compose.prod.yml exec web python manage.py collectstatic --noinput


## Como se conectar no banco de dados via terminal (Não sei me conectar via interface, me desculpa):
OBS: Tem um pg-admin subindo com o `docker-compose.prod.yml` mas não está funcionando e ainda não sei pq...
- Como não tenho postgresslq em meu computador, costumo subir ele no docker e me conectar (como fiz agora no docker-compose). Para se conectar utilize esses comando (Obviamente não vou passar as info do meu banco...)
    ###
        docker-compose -f docker-compose.prod.yml exec db psql --host=<exemplo: database-1.amazonaws.rds.***> --port=<porta do banco> --username=<username do banco> --password
    
    - Nota que no --password não vai nada, certo? Isso é apenas uma questão de segurança do proprio banco, isso apenas indicar que você vai quere passa uma senha caso você fez um ususario com senha. Quando rodar perceba que vai ter embaixo `password:` ai nesse lugar você pode colocar o password.

## Antes de colocar arquivos statico em produção
- Comando importantes
    ###
        python manage.py collectstatic --noinput
- Para rodar o servidor e carregar os arquivos static com DEBUG = False
    ###
        python manage.py runserver --insecure
