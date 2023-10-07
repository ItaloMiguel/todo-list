# Documentação projeto
Leia com atenção para não se perder nos comandos. porque:
- Todos comando ensinando/utilizados aqui vão ser por terminal, mais precisamente do linux distro Arch (Nesse caso a distro é indiferente). Caso estiver utilizando windows, utilize o Git Bash (Ou formata essa bomba de windows e coloca um linux ubuntu 22.04LTS que já é mil vezes melhor para mexer com docker, nginx e shellscript ). Existe a opção de utilizar WSL 2 (recomendo bastante), [video](https://youtu.be/sjrW74Hx5Po?si=4dxIjNW7zQGszeNV) de como organizar seu ambiente de desenvolvimento.

## Subir o projeto:
Recomendo fortemente utilziar o [Makefile](https://www.gnu.org/software/make/manual/make.html), mas caso não consiga, pode utilizar normalmente os comando via docker-compose ensinado nos links logo abaixo.

OBS: Se seu docker ainda estiver com `sudo` apenas adicione `sudo` à frente de todo comando relacionado a docker. Passo a Passo de como remover o sudo: [Manage Docker as a non-root user](https://docs.docker.com/engine/install/linux-postinstall/)
 
- #### [Comando subir como desenvolvedor](https://github.com/ItaloMiguel/todo-list/tree/master/doc/command_dev.md)

- #### [Comando subir como produção](https://github.com/ItaloMiguel/todo-list/tree/master/doc/command_pord.md)

## Antes de colocar arquivos statico em produção
- Comando importantes:
    ###
        python manage.py collectstatic --noinput
- Para rodar o servidor e carregar os arquivos static com DEBUG = False:
    ###
        python manage.py runserver --insecure
