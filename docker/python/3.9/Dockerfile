FROM python:3.9-slim

WORKDIR /data_lab

# Poetryをインストール
RUN pip install poetry

# Poetryの設定ファイルをコピー
COPY pyproject.toml poetry.lock* /data_lab/

# Poetryを使用して依存関係をインストール
RUN poetry config virtualenvs.create false && \
    poetry install --no-interaction --no-ansi

# アプリケーションのソースコードをコピー
COPY . /data_lab

# コンテナを起動させ続けるための処理
CMD ["tail", "-f", "/dev/null"]]
