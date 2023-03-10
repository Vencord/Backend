FROM golang:1.20

WORKDIR /app

ADD go.mod go.sum ./
RUN go mod download

ADD . ./
RUN go build -o /backend

CMD ["/backend"]
