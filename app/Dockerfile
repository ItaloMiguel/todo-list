FROM python:3.9.6-alpine

WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apk update \
    && apk add postgresql-dev gcc python3-dev musl-dev

# Instalar dependencias
RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# Copiar o entrypoint
COPY ./entrypoint.dev.sh .
RUN sed -i 's/\r$//g' /usr/src/app/entrypoint.dev.sh
RUN chmod +x /usr/src/app/entrypoint.dev.sh

COPY . .

# Rodar o entrypoint
ENTRYPOINT ["/usr/src/app/entrypoint.dev.sh"]