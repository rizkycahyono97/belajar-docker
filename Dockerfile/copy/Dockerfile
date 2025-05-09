FROM alpine:3

RUN mkdir hello

# perintah COPY beda sama ADD, copy cuma mengcopy saja
# akan mengcopy semua file txt ke folder hello di image
COPY text/*.txt hello

CMD ["cat", "hello/class.txt"]