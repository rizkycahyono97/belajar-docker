# **Docker Compose**

Docker Compose adalah alat yang digunakan untuk mendefinisikan dan menjalankan aplikasi multi-container dengan Docker. Dengan menggunakan file konfigurasi `docker-compose.yml`, Anda dapat mengelola beberapa container, jaringan, volume, variabel lingkungan, dan dependensi secara terpusat.

---

## **Daftar Isi**
1. [Pengenalan Docker Compose](#pengenalan-docker-compose)
2. [Instalasi Docker Compose](#instalasi-docker-compose)
3. [Konfigurasi File (docker-compose.yml)](#konfigurasi-file-docker-composeyml)
4. [Membuat dan Menjalankan Container](#membuat-dan-menjalankan-container)
5. [Melihat, Menghentikan, dan Menghapus Container](#melihat-menghentikan-dan-menghapus-container)
6. [Project Name](#project-name)
7. [Service](#service)
8. [Port Mapping](#port-mapping)
9. [Environment Variable](#environment-variable)
10. [Bind Mount](#bind-mount)
11. [Volume](#volume)
12. [Network](#network)
13. [Depends On](#depends-on)
14. [Restart Policy](#restart-policy)
15. [Resource Limit](#resource-limit)
16. [Dockerfile](#dockerfile)
17. [Health Check](#health-check)
18. [Extend Service](#extend-service)

---

## **Pengenalan Docker Compose**
Docker Compose memungkinkan Anda mendefinisikan layanan (services), jaringan (networks), dan volume (volumes) dalam satu file YAML (`docker-compose.yml`). Ini sangat berguna untuk mengelola aplikasi yang terdiri dari beberapa container, seperti aplikasi web, database, caching server, dll.

---

## **Instalasi Docker Compose**
Sebelum menggunakan Docker Compose, pastikan Docker sudah terinstal di sistem Anda. Kemudian, instal Docker Compose:

### **Linux**
```bash
sudo curl -L "https://github.com/docker/compose/releases/download/v2.x.x/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```

### **Windows/macOS**
Jika Anda menggunakan Docker Desktop, Docker Compose sudah termasuk dalam instalasi.

Verifikasi instalasi:
```bash
docker-compose --version
```

---

## **Konfigurasi File (docker-compose.yml)**

File `docker-compose.yml` adalah file YAML yang mendefinisikan layanan, jaringan, dan volume. Berikut adalah struktur dasar:

```yaml
version: '3.8'  # Versi Docker Compose
services:
  app:
    image: nginx:latest
    ports:
      - "8080:80"
```

---

## **Membuat dan Menjalankan Container**

Untuk membuat dan menjalankan container berdasarkan file `docker-compose.yml`:

```bash
docker-compose up
```

Jika Anda ingin menjalankan container di latar belakang (detached mode):

```bash
docker-compose up -d
```

---

## **Melihat, Menghentikan, dan Menghapus Container**

### **Melihat Container**
Untuk melihat semua container yang sedang berjalan:

```bash
docker-compose ps
```

### **Menghentikan Container**
Untuk menghentikan semua container:

```bash
docker-compose down
```

### **Menghapus Container**
Menghapus container juga dilakukan dengan perintah `down`. Jika Anda ingin menghapus volume yang terkait:

```bash
docker-compose down -v
```

---

## **Project Name**

Secara default, nama proyek diambil dari nama direktori saat menjalankan `docker-compose`. Anda dapat menentukan nama proyek secara eksplisit:

```bash
docker-compose -p myproject up
```

---

## **Service**

Setiap service di `docker-compose.yml` mendefinisikan satu container. Contoh:

```yaml
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

Jalankan hanya satu service tertentu:

```bash
docker-compose up <service_name>
```

---

## **Port Mapping**

Gunakan `ports` untuk memetakan port host ke port container:

```yaml
services:
  web:
    image: nginx:latest
    ports:
      - "8080:80"
```

---

## **Environment Variable**

Variabel lingkungan dapat ditambahkan di bawah `environment`:

```yaml
services:
  db:
    image: mysql:5.7
    environment:
      MYSQL_ROOT_PASSWORD: example
      MYSQL_DATABASE: testdb
```

Atau gunakan file `.env`:

```yaml
services:
  db:
    image: mysql:5.7
    env_file:
      - .env
```

---

## **Bind Mount**

Bind mount memungkinkan Anda untuk menyinkronkan folder lokal dengan folder di container:

```yaml
services:
  app:
    image: nginx:latest
    volumes:
      - ./html:/usr/share/nginx/html
```

---

## **Volume**

Volume digunakan untuk menyimpan data persisten:

```yaml
services:
  db:
    image: mysql:5.7
    volumes:
      - db_data:/var/lib/mysql

volumes:
  db_data:
```

---

## **Network**

Anda dapat mendefinisikan jaringan khusus untuk komunikasi antar container:

```yaml
services:
  web:
    image: nginx:latest
    networks:
      - app-network

  db:
    image: mysql:5.7
    networks:
      - app-network

networks:
  app-network:
```

---

## **Depends On**

Gunakan `depends_on` untuk memastikan urutan startup container:

```yaml
services:
  web:
    image: nginx:latest
    depends_on:
      - db

  db:
    image: mysql:5.7
```

---

## **Restart Policy**

Tentukan kebijakan restart untuk container:

```yaml
services:
  web:
    image: nginx:latest
    restart: always
```

### **Opsi Restart**

* `no`: Tidak merestart container.
* `always`: Selalu merestart container, bahkan jika dihentikan secara manual.
* `on-failure`: Merestart hanya jika container keluar dengan kode error.
* `unless-stopped`: Merestart kecuali container dihentikan secara manual.

---

## **Resource Limit**

Batas sumber daya seperti CPU dan memori dapat ditentukan:

```yaml
services:
  web:
    image: nginx:latest
    deploy:
      resources:
        limits:
          cpus: '0.5'
          memory: 512M
```

---

## **Dockerfile**

Jika Anda menggunakan Dockerfile kustom, tentukan pathnya:

```yaml
services:
  app:
    build: ./app
```

---

## **Health Check**

Tambahkan health check untuk memantau status container:

```yaml
services:
  web:
    image: nginx:latest
    healthcheck:
      test: ["CMD", "curl", "-f", "http://localhost"]
      interval: 30s
      timeout: 10s
      retries: 3
```

---

## **Extend Service**

Gunakan `extends` untuk mewarisi konfigurasi dari service lain:

```yaml
services:
   app:
      environment:
         - "MODE=development"
```
### run extend-service
```bash
   docker compose -f docker-compose.yaml -f development.yaml create
```