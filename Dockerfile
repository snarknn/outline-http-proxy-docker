FROM golang:alpine AS builder

RUN apk add --no-cache git && mkdir /app

WORKDIR /app

RUN go install github.com/Jigsaw-Code/outline-sdk/x/examples/http2transport@latest

FROM alpine:latest

COPY --from=builder /go/bin/http2transport /app/http2transport

ENV KEY=""

EXPOSE 8080

CMD /app/http2transport -transport "$KEY" -localAddr localhost:8080
