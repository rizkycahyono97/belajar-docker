FROM golang:1.18-alpine

WORKDIR /app

RUN addgroup -S pzngroup
RUN adduser -S -D -h /app pznuser pzngroup
RUN chown -R pznuser:pzngroup /app

USER pznuser

COPY main.go /app

EXPOSE 8080
CMD ["go", "run", "main.go"]