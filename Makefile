VERSION=$(shell git describe --tags --abbrev=0)-$(shell git rev-parse --short HEAD)
format:
	gofmt -s -w ./

build:
	go build -v -o mybot -ldflags "-X="github.com/humenrus/mybot/cmd.appVersion=${Version}