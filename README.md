## 📦 Python Hello World Docker Project

This guide will walk you through creating a simple Python Hello World app, containerizing it with Docker, and running it locally.

---
```
git clone https://github.com/atulkamble/pythonhelloworld.git
cd pythonhelloworld
```

## 📁 Project Structure

```
.
├── Dockerfile
└── helloworld.py
```

---

## 📜 Steps to Build and Run

### 1️⃣ Create Python Hello World Script

```bash
touch helloworld.py
```

Open and add the following code:

```python
print("Hello, World from Dockerized Python App!")
```

Check the file:

```bash
cat helloworld.py
```

Run it locally to test:

```bash
python3 --version
python3 helloworld.py
```

---

### 2️⃣ Create Dockerfile

```bash
touch Dockerfile
```

Edit and add the following content:

```Dockerfile
# Use official Python base image
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy local code to the container
COPY helloworld.py .

# Command to run the app
CMD ["python", "helloworld.py"]
```

Check files:

```bash
ls
```

---

### 3️⃣ Build Docker Image

```bash
docker build -t atuljkamble/pythonhelloworld .
```

Check Docker images:

```bash
docker images
```

---

### 4️⃣ Push Docker Image to Docker Hub

```bash
docker push atuljkamble/pythonhelloworld
```

---

### 5️⃣ Pull Image (if testing from another system)

```bash
docker pull atuljkamble/pythonhelloworld
```

---

### 6️⃣ Run Docker Container

```bash
docker run atuljkamble/pythonhelloworld
```

Check running containers:

```bash
docker container ls
docker ps -a
```

---

## ✅ Output Example

```
Hello, World from Dockerized Python App!
```

---

## 📌 Notes

* Make sure you are logged in to Docker Hub before pushing:

  ```bash
  docker login
  ```
* Replace `atuljkamble` with your Docker Hub username if different.
---
## 👨‍💻 Author

**Atul Kamble**

- 💼 [LinkedIn](https://www.linkedin.com/in/atuljkamble)
- 🐙 [GitHub](https://github.com/atulkamble)
- 🐦 [X](https://x.com/Atul_Kamble)
- 📷 [Instagram](https://www.instagram.com/atuljkamble)
- 🌐 [Website](https://www.atulkamble.in)


