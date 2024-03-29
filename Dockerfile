FROM golang:latest

WORKDIR /
COPY main.go /

RUN go mod init main
RUN go get github.com/gorilla/mux

CMD ["go","run","main.go"]