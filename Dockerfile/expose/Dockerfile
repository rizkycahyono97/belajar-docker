FROM golang:alpine

RUN mkdir app
COPY main.go app

# untuk menandakan image menggunakan port 8080, tetapi tidak wajib
# default menggunakan TCP
EXPOSE 8080

CMD [ "go", "run", "app/main.go" ]