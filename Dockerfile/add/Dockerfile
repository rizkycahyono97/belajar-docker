FROM alpine:3

RUN mkdir hello

# perintah ADD juga bisa mendownload dari URL, bisa juga extract file otomatis
# akan memindahkan semua file txt ke folder hello di image
ADD text/*.txt hello

CMD ["cat", "hello/name.txt"]