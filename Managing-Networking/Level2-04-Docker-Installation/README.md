# Level2-04: Docker Installation on Ubuntu

## Objective

Install Docker on Ubuntu and verify that Docker Engine is working correctly.

---

## Environment

- OS: Ubuntu 24.04 LTS
- User: appuser
- Hostname: workstation

---

## Installation Steps

### Update Package Repository

```bash
sudo apt update
```

### Install Docker

```bash
sudo apt install docker.io -y
```

Docker is available through the Ubuntu package repository as the `docker.io` package. :contentReference[oaicite:0]{index=0}

---

## Start Docker Service

```bash
sudo systemctl enable docker
sudo systemctl start docker
```

Verify service status:

```bash
sudo systemctl status docker
```

Expected:

```text
active (running)
```

---

## Verify Docker Version

```bash
docker --version
```

Example:

```text
Docker version 29.x.x
```

---

## Test Docker Installation

Run the hello-world container:

```bash
sudo docker run hello-world
```

Expected output:

```text
Hello from Docker!
```

This confirms that Docker Engine is installed and functioning correctly. :contentReference[oaicite:1]{index=1}

---

## Verification Commands

```bash
docker --version
sudo systemctl status docker
sudo docker run hello-world
```

---

## Screenshots

Store screenshots in:

```text
screenshots/
```

Required screenshots:

1. apt-update.png
2. docker-install.png
3. docker-version.png
4. docker-service-status.png
5. hello-world.png

---

## Result

Docker was successfully installed on Ubuntu and verified using the hello-world container test.
