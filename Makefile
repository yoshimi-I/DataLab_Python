# TODO 論文のurlを含めるとそのまま出力する
# git czによるコミット
commit:
	npx git-cz

# pythonのversionを指定してdockerコンテナを立ち上げる
up:
	@./bin/setup_docker.sh

# pythonのバージョンを変更
version:
	@./bin/rewrite_version.sh
