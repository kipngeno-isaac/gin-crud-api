FROM golang:1.19-alpine as builder

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY . ./

RUN go build -o /gin-crud-api .

FROM alpine:latest
COPY --from=builder /gin-crud-api /gin-crud-api

EXPOSE 8080

ENTRYPOINT ["/gin-crud-api"]