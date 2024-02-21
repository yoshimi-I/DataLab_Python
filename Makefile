# TODO 論文のurlを含めるとそのまま出力する
# git czによるコミット
commit:
	npx git-cz

# pythonのversionを使う
up:
ifndef PYTHON_VERSION
	$(error PYTHON_VERSION is undefined)
endif
	@echo "Using Python version: $(PYTHON_VERSION)"
	@PYTHON_VERSION=$(PYTHON_VERSION) docker-compose up --build
