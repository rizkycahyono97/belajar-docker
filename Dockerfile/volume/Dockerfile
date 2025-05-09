FROM golang:1.18-alpine

# default port env, app_data env
ENV APP_PORT=8080
ENV APP_DATA=/logs

RUN mkdir ${APP_DATA}
RUN mkdir app
COPY main.go app

# kita expose di envnya
EXPOSE ${APP_PORT}

# hasil eksekusi file kita simpan di ${APP_DATA}
VOLUME ${APP_DATA}

CMD [ "go", "run", "app/main.go" ]
