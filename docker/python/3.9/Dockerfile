FROM python:3.9-slim

WORKDIR /data_lab

RUN pip install poetry

COPY pyproject.toml poetry.lock* /data_lab/


RUN poetry config virtualenvs.create false \
    && poetry install --no-interaction --no-ansi

# npm czを使いたいのでnodeを入れる
RUN apt-get update \
    && apt-get install -y curl gnupg2 \
    && curl -sL https://deb.nodesource.com/setup_16.x | bash - \
    && apt-get install -y nodejs \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY package.json package-lock.json* /data_lab/

RUN npm install


COPY . /data_lab/

# コンテナを起動し続ける
CMD ["tail", "-f", "/dev/null"]
