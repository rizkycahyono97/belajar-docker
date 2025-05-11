FROM golang:1.18-alpine

# install curl
RUN apk --no-cache add curl
RUN mkdir app

COPY main.go app

EXPOSE 8080

CMD ["sh", "-c", "go run app/main.go"]