FROM golang:1.18-alpine

# menambahkan argumen yang mana defaultnya app
ARG app=main

RUN mkdir /app
WORKDIR /app

COPY main.go .

RUN mv app.go ${app}.go

EXPOSE 8080

ENV APP=${app}
CMD ["sh", "-c", "go run ${APP}.go"]