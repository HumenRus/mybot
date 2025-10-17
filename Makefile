VERSION=$(shell git describe --tags --abbrev=0)-$(shell git rev-parse --short HEAD)
TARGETOS=linux
format:
	gofmt -s -w ./

lint:
	golint

test:
	go test -v

build: format 
	CGO_ENABLED=0 GOOS=${TARGETOS} GOARCH=${TARGETARCH} go build -v -o mybot -ldflags "-X="github.com/humenrus/mybot/cmd.appVersion=${VERSION}

clean:
	rm -rf mybot