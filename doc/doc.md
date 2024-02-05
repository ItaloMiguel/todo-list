# Documentação projeto
- Leia com atenção para evitar se perder nos comandos, pois:

    Todos os comandos ensinados e utilizados aqui serão executados via terminal, mais especificamente em uma distribuição Linux, como o Arch (embora a distro seja indiferente). Se estiver utilizando o Windows, recomendo o uso do Git Bash. Se estiver enfrentando dificuldades no Windows, pode considerar a transição para uma experiência mais amigável com Docker, Nginx e Shell Script instalando uma distribuição Linux, como o Ubuntu 22.04 LTS, que é mais adequado para essas ferramentas.
    
    Uma alternativa no Windows é o uso do WSL 2, que é altamente recomendado para criar um ambiente de desenvolvimento mais coeso. Você pode conferir um vídeo útil sobre como organizar seu ambiente de desenvolvimento [aqui](https://youtu.be/sjrW74Hx5Po?si=4dxIjNW7zQGszeNV).
    
    Para garantir uma melhor compreensão nos commits, eu adoto um padrão específico. Esses padrões podem ser estudados e compreendidos melhor visitando [este site](https://dev.to/vitordevsp/padronizacao-de-commit-com-commitlint-husky-e-commitizen-3g1n). Melhorias no texto e sugestões são sempre bem-vindas!

## Subir o projeto:
Recomendo fortemente o uso de [Makefile](https://www.gnu.org/software/make/manual/make.html). No entanto, caso encontre dificuldades, é possível utilizar os comandos diretamente via docker-compose, conforme demonstrado nos links abaixo.

Observação: Caso seu docker ainda exija o uso de `sudo`, basta adicionar `sudo` antes de qualquer comando relacionado ao Docker. Para remover essa necessidade de sudo, siga o passo a passo detalhado: [Manage Docker as a non-root user](https://docs.docker.com/engine/install/linux-postinstall/)
 
- #### [Comando subir como desenvolvedor](https://github.com/ItaloMiguel/todo-list/tree/master/doc/command_dev.md)

- #### [Comando subir como produção](https://github.com/ItaloMiguel/todo-list/tree/master/doc/command_pord.md)

## Antes de colocar arquivos statico em produção
- Comandos importantes:
    ###
        python manage.py collectstatic --noinput
- Para rodar o servidor e carregar os arquivos static com DEBUG = False:
    ###
        python manage.py runserver --insecure
