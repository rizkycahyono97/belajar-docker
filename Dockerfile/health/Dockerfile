FROM golang:1.18-alpine

# install curl
RUN apk --no-cache add curl
RUN mkdir app

COPY main.go app

EXPOSE 8080

# healthcheck
HEALTHCHECK --interval=5s --start-period=5s CMD curl -f http://localhost:8080/health

CMD ["sh", "-c", "go run app/main.go"]