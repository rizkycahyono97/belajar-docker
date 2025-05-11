FROM golang:1.18-alpine

RUN mkdir /app/
COPY main.go /app/

EXPOSE 8080

ENTRYPOINT ["go", "run"]

# seakan-akan seperti CMD ["go", "run", "/app/app.go"]
CMD ["/app/main.go"]