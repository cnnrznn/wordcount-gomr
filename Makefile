all: wordcount
	skaffold build

wordcount:
	go build -o ./jobs/wordcount/ ./jobs/wordcount