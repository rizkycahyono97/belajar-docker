# **Belajar Docker: Dockerfile dan Docker Compose**

Repository ini adalah panduan sederhana untuk mempelajari **Docker**, sebuah platform yang memungkinkan Anda mengemas aplikasi ke dalam container yang ringan, portabel, dan konsisten.

---

## **Apa itu Docker?**
Docker adalah alat yang digunakan untuk membuat, menyebarkan, dan menjalankan aplikasi di dalam **container**. Container adalah lingkungan terisolasi yang mencakup semua dependensi (kode, runtime, library, dll.) yang dibutuhkan oleh aplikasi sehingga aplikasi dapat berjalan dengan konsisten di berbagai sistem.

Keuntungan utama menggunakan Docker:
- **Portabilitas**: Aplikasi dapat berjalan di mana saja tanpa perubahan.
- **Konsistensi**: Lingkungan pengembangan, pengujian, dan produksi tetap sama.
- **Efisiensi**: Container lebih ringan daripada virtual machine karena tidak memerlukan sistem operasi tambahan.

---

## **Struktur Repository**
Repository ini terdiri dari dua folder utama:
1. **Dockerfile**: Berisi materi tentang cara membuat image Docker menggunakan `Dockerfile`.
2. **docker-compose**: Berisi materi tentang cara mengelola multi-container menggunakan `docker-compose.yml`.

Setiap folder memiliki penjelasan singkat tentang fiturnya.

---

## **Cara Menggunakan Repository Ini**

### **Prasyarat**
Sebelum memulai, pastikan Anda telah menginstal Docker dan Docker Compose:
- [Instal Docker](https://docs.docker.com/get-docker/)
- [Instal Docker Compose](https://docs.docker.com/compose/install/)

Verifikasi instalasi:
```bash
docker --version
docker-compose --version
```

---

## **Folder 1: Dockerfile**
Folder ini berisi materi tentang cara membuat image Docker menggunakan `Dockerfile`.

### **Apa itu Dockerfile?**
`Dockerfile` adalah file teks yang berisi instruksi untuk membangun image Docker. Setiap instruksi menambahkan layer ke image.

### **Contoh Sederhana**
File `Dockerfile`:
```Dockerfile
FROM nginx:latest
COPY ./html /usr/share/nginx/html
```

Jalankan perintah berikut untuk membangun dan menjalankan image:
```bash
docker build -t my-nginx .
docker run -d -p 8080:80 my-nginx
```

Untuk penjelasan lebih lanjut, lihat folder `Dockerfile`.

---

## **Folder 2: docker-compose**
Folder ini berisi materi tentang cara mengelola aplikasi multi-container menggunakan `docker-compose.yml`.

### **Apa itu Docker Compose?**
Docker Compose memungkinkan Anda mendefinisikan dan menjalankan aplikasi multi-container menggunakan file YAML (`docker-compose.yml`). Anda dapat mengatur layanan, jaringan, volume, dan dependensi dalam satu file.

### **Contoh Sederhana**
File `docker-compose.yml`:
```yaml
version: '3.8'
services:
  web:
    image: nginx:latest
    ports:
      - "8080:80"
  db:
    image: mysql:5.7
    environment:
      MYSQL_ROOT_PASSWORD: example
```

Jalankan perintah berikut untuk memulai:
```bash
docker-compose up
```

Untuk penjelasan lebih lanjut, lihat folder `docker-compose`.

---

## **Kontribusi**
Jika Anda ingin berkontribusi atau menambahkan materi baru, silakan buat pull request. Semua kontribusi diterima dengan senang hati!

---

Semoga repository ini membantu Anda memahami dasar-dasar Docker dan Docker Compose! 🚀