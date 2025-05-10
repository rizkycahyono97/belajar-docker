# **Belajar Dockerfile**

Repository ini dirancang untuk membantu Anda mempelajari Dockerfile dan berbagai instruksi yang digunakan dalam pembuatan image Docker. Setiap instruksi dijelaskan secara singkat, dan Anda dapat menjalankan contoh-contoh praktis menggunakan file `script.sh`.

## **Daftar Isi**
1. [Pendahuluan](#pendahuluan)
2. [Struktur Direktori](#struktur-direktori)
3. [Instruksi Dockerfile](#instruksi-dockerfile)
    - [From](#from)
    - [Run](#run)
    - [Command](#command)
    - [Label](#label)
    - [Add](#add)
    - [Copy](#copy)
    - [Dockerignore](#dockerignore)
    - [Expose](#expose)
    - [Environment Variable](#environment-variable)
    - [Volume](#volume)
    - [Working Directory](#working-directory)
    - [User](#user)
    - [Argument](#argument)
    - [Health Check](#health-check)
    - [Entrypoint](#entrypoint)
    - [Multi Stage Build](#multi-stage-build)
4. [Cara Menjalankan Contoh](#cara-menjalankan-contoh)

---

## **Pendahuluan**

Dockerfile adalah file konfigurasi yang digunakan untuk membangun image Docker. File ini berisi serangkaian instruksi yang menentukan bagaimana image akan dibuat. Repository ini menyediakan contoh praktis untuk setiap instruksi Dockerfile.

---

## **Struktur Direktori**

```
.
├── Dockerfile
│   ├── add
│   │   ├── Dockerfile
│   │   └── text
│   │       ├── class.txt
│   │       └── name.txt
│   ├── arg
│   │   ├── Dockerfile
│   │   └── main.go
│   ├── command
│   │   └── Dockerfile
│   ├── copy
│   │   ├── Dockerfile
│   │   └── text
│   │       ├── class.txt
│   │       └── name.txt
│   ├── entrypoint
│   │   ├── Dockerfile
│   │   └── main.go
│   ├── env
│   │   ├── Dockerfile
│   │   └── main.go
│   ├── expose
│   │   ├── Dockerfile
│   │   └── main.go
│   ├── from
│   │   └── Dockerfile
│   ├── health
│   │   ├── Dockerfile
│   │   └── main.go
│   ├── ignore
│   │   ├── Dockerfile
│   │   └── text
│   │       ├── app.log
│   │       ├── sample.log
│   │       ├── temp
│   │       │   └── sample.txt
│   │       └── world.txt
│   ├── label
│   │   └── Dockerfile
│   ├── multi
│   │   ├── Dockerfile
│   │   └── main.go
│   ├── run
│   │   └── Dockerfile
│   ├── script.sh
│   ├── user
│   │   ├── Dockerfile
│   │   └── main.go
│   ├── volume
│   │   ├── Dockerfile
│   │   └── main.go
│   └── workdir
│       ├── Dockerfile
│       └── main.go
└── README.md
```

Setiap folder berisi contoh `Dockerfile` dan file pendukung untuk instruksi tertentu.

---

## **Instruksi Dockerfile**

### **From**
- **Deskripsi**: Menentukan base image untuk membangun image Docker.
- **Contoh**: Lihat `Dockerfile` di folder `from`.

### **Run**
- **Deskripsi**: Menjalankan perintah shell selama proses build image.
- **Contoh**: Lihat `Dockerfile` di folder `run`.

### **Command**
- **Deskripsi**: Menentukan perintah default yang akan dijalankan saat container dimulai.
- **Contoh**: Lihat `Dockerfile` di folder `command`.

### **Label**
- **Deskripsi**: Menambahkan metadata ke image Docker.
- **Contoh**: Lihat `Dockerfile` di folder `label`.

### **Add**
- **Deskripsi**: Menyalin file dari host ke image dan mendukung ekstraksi file arsip.
- **Contoh**: Lihat `Dockerfile` di folder `add`.

### **Copy**
- **Deskripsi**: Menyalin file atau direktori dari host ke image.
- **Contoh**: Lihat `Dockerfile` di folder `copy`.

### **Dockerignore**
- **Deskripsi**: Mengabaikan file atau direktori tertentu saat membangun image.
- **Contoh**: Lihat `Dockerfile` dan `.dockerignore` di folder `ignore`.

### **Expose**
- **Deskripsi**: Mendeklarasikan port yang akan digunakan oleh aplikasi di dalam container.
- **Contoh**: Lihat `Dockerfile` di folder `expose`.

### **Environment Variable**
- **Deskripsi**: Menetapkan variabel lingkungan di dalam container.
- **Contoh**: Lihat `Dockerfile` di folder `env`.

### **Volume**
- **Deskripsi**: Menyediakan volume persisten untuk data di dalam container.
- **Contoh**: Lihat `Dockerfile` di folder `volume`.

### **Working Directory**
- **Deskripsi**: Menetapkan direktori kerja di dalam container.
- **Contoh**: Lihat `Dockerfile` di folder `workdir`.

### **User**
- **Deskripsi**: Menentukan pengguna yang akan menjalankan proses di dalam container.
- **Contoh**: Lihat `Dockerfile` di folder `user`.

### **Argument**
- **Deskripsi**: Menyediakan argumen build-time yang dapat digunakan selama proses build.
- **Contoh**: Lihat `Dockerfile` di folder `arg`.

### **Health Check**
- **Deskripsi**: Memeriksa kesehatan container secara berkala.
- **Contoh**: Lihat `Dockerfile` di folder `health`.

### **Entrypoint**
- **Deskripsi**: Menentukan perintah utama yang akan dijalankan saat container dimulai.
- **Contoh**: Lihat `Dockerfile` di folder `entrypoint`.

### **Multi Stage Build**
- **Deskripsi**: Memungkinkan pembuatan image dengan beberapa stage untuk mengurangi ukuran akhir image.
- **Contoh**: Lihat `Dockerfile` di folder `multi`.

---

## **Cara Menjalankan Contoh**

1. **Clone Repository**:
   ```bash
   git clone https://github.com/rizkycahyono97/belajar-docker.git
   cd belajar-docker
   ```

2. **Jalankan Skrip**:
   Gunakan skrip `script.sh` untuk membangun dan menjalankan container:
   ```bash
   ./script.sh
   ```

3. **Lihat Output**:
   Skrip akan membangun image Docker dan menjalankan container sesuai dengan instruksi yang dipilih.

---

## **Kontribusi**

Jika Anda ingin berkontribusi, silakan buat pull request atau laporkan issue melalui GitHub.

---

## **Referensi**

- [Docker Documentation](https://docs.docker.com/)
- [Best Practices for Writing Dockerfiles](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/)

---

Semoga repository ini membantu Anda memahami Dockerfile dan meningkatkan keterampilan Anda dalam menggunakan Docker! 😊

--- 
