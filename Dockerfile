FROM python:3-alpine

EXPOSE 8080
WORKDIR /u01/app
COPY application /u01/app

RUN \
  apk update && \
  apk add curl && \
  pip install -r /u01/app/requirements.txt && \
  rm -f /u01/app/requirements.txt

ENTRYPOINT [ "uvicorn", "main:app", "--reload","--host", "0.0.0.0", "--port", "8080" ]