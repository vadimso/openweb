
FROM golang:1.20 AS builder


WORKDIR /app


COPY go.mod go.sum ./


RUN go mod download


COPY . .


RUN GOOS=linux GOARCH=amd64 go build -o main .


FROM scratch


COPY --from=builder /app/main /


EXPOSE 8080


CMD ["/main"]
