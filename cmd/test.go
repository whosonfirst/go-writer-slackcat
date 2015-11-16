package main

import (
	"flag"
	"github.com/whosonfirst/go-slackcat-writer"
	"strings"
)

func main() {

	var channel = flag.String("config", "", "The path to your Slackcat config file")

	flag.Parse()
	args := flag.Args()

	w, err := pubsub.NewWriter(*config)

	if err != nil {
		panic(err)
	}

	msg := strings.Join(args, " ")

	_, err = w.WriteString(msg)

	if err != nil {
		panic(err)
	}
}
