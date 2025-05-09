FROM alpine:3

# label = memberikan nama di metadata
LABEL author="rizky cahyono putra"
LABEL company="UPT PPTIK" website="https://unida.gontor.ac.id"

# menjalankan suatu perintah
RUN mkdir hello
RUN echo "coba pertama" >> "hello/world.txt"

# CMD = akan dijalanakan nanti, ketika imagenya di run / cat hello/world.txt
CMD ["cat", "hello/world.txt"] 
