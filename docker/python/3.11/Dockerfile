FROM python:3.11-slim

ENV PYTHON_VERSION=3.11

WORKDIR /workspaces/DataLab_Python

RUN pip install poetry

COPY ./docker/python/${PYTHON_VERSION}/pyproject.toml ./docker/python/${PYTHON_VERSION}/poetry.lock* /workspaces/DataLab_Python/


RUN poetry config virtualenvs.create false \
    && poetry install --no-interaction --no-ansi

# npm czを使いたいのでnodeを入れる
RUN apt-get update \
    && apt-get install nodejs -y \
    && apt-get install npm -y \
    && update-alternatives --install /usr/bin/node node /usr/bin/nodejs 10

COPY package.json package-lock.json* /workspaces/DataLab_Python/

RUN npm install


COPY . /workspaces/DataLab_Python
