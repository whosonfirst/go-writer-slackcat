prep:
	if test -d pkg; then rm -rf pkg; fi

self:   prep
	if test -d src/github.com/whosonfirst/go-pubsub-writer; then rm -rf src/github.com/whosonfirst/go-pubsub-writer; fi
	mkdir -p src/github.com/whosonfirst/go-pubsub-writer
	cp pubsub.go src/github.com/whosonfirst/go-pubsub-writer/

deps:   self
	go get -u "github.com/go-redis/redis"

fmt:
	go fmt cmd/*.go
	go fmt *.go
