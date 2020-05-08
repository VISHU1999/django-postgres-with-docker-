# syntax=docker/dockerfile:1

FROM python:3.8.3-slim-buster AS dev
ENV PYTHONUNBUFFERED=1
WORKDIR /src/app
COPY ./requirements.txt /src/app/requirements.txt
RUN pip3 install -r requirements.txt

COPY . /src/app



FROM dev AS Test
WORKDIR /app
COPY --from=dev /src/app /app
COPY ./db-entrypoint.sh /app/db-entrypoint.sh
COPY ./django-entrypoint.sh /app/django-entrypoint.sh
COPY . /app
# RUN chmod +x /app/django-entrypoint.sh
# ENTRYPOINT ["/app/django-entrypoint.sh"]
