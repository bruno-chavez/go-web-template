FROM golang:1.15 as builder

ENV GO111MODULE=on

WORKDIR /service

COPY go.mod .
COPY go.sum .

RUN go mod download

COPY . .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build


FROM scratch

ENV PORT=8080

COPY --from=builder /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/

# Rename go-microservice-template with your module name
COPY --from=builder /service/go-microservice-template .

EXPOSE ${PORT}
ENTRYPOINT ["/search"]
