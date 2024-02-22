FROM python:3.12-slim

WORKDIR /data_lab

RUN pip install poetry

COPY ./docker/python/3.12/pyproject.toml ./docker/python/3.12/poetry.lock* /data_lab/


RUN poetry config virtualenvs.create false \
    && poetry install --no-interaction --no-ansi

# npm czを使いたいのでnodeを入れる
RUN apt-get update \
    && apt-get install nodejs -y \
    && apt-get install npm -y \
    && update-alternatives --install /usr/bin/node node /usr/bin/nodejs 10 

COPY package.json package-lock.json* /data_lab/

RUN npm install


COPY . /data_lab/

# コンテナを起動し続ける
CMD ["tail", "-f", "/dev/null"]
