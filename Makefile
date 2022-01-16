NAME=jamjarlabs/jamjar-build-image
VERSION=dev

default:
	docker build -t $(NAME):$(VERSION) .
