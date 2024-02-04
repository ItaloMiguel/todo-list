#! /bin/bash

docker-compose -f docker-compose.prod.yml exec db psql -U postgres -W todolist