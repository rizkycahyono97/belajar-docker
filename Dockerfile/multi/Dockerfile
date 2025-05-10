# stage 1: build go app
FROM golang:1.18-alpine AS builder

WORKDIR /app/
COPY main.go /app/
RUN go build -o /app/main /app/main.go

# stage 2: image di production
FROM alpine:3

WORKDIR /app/
# kita akan copy file binary go dari stage1 yang di folder /app/main ke /app/ (stage2:production)
COPY --from=builder /app/main /app/
CMD ["/app/main"]