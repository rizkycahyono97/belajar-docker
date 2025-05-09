FROM golang:alpine

# default port env
ENV APP_PORT=8080

RUN mkdir app
COPY main.go app

# kita expose di envnya 
EXPOSE ${APP_PORT}

CMD [ "go", "run", "app/main.go" ]
