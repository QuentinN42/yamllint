FROM python:3.10-alpine3.15

WORKDIR /app
COPY . .
RUN python setup.py install

ENTRYPOINT ["python", "-m", "yamllint"]
