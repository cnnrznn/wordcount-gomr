FROM golang:1.14

WORKDIR /src

##COPY go.mod go.sum ./
##RUN go mod download

COPY . ./

#RUN go build -o /app/gomr
COPY wordcount /app/wordcount

ENTRYPOINT ["/app/wordcount"]
