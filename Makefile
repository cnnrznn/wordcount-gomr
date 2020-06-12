all: driver wordcount
	skaffold build

wordcount: jobs/wordcount/wordcount.go
	go build -o ./jobs/wordcount/ ./jobs/wordcount

driver: main.go
	go build
