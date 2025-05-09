FROM alpine:3

# menjalankan suatu perintah
RUN mkdir hello
RUN echo "coba pertama" >> "hello/world.txt"

# CMD = akan dijalanakan nanti, ketika imagenya di run / cat hello/world.txt
CMD ["cat", "hello/world.txt"]
