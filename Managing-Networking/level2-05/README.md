# Level2-07: Deploy Nginx Container with Persistent Storage

## Objective

Deploy an Nginx container named `my-app1` using Docker, expose it on port `8082`, and configure persistent storage for application data.

---

## Environment

- OS: Ubuntu 24.04 LTS
- User: appuser
- Container Name: my-app1
- Host Port: 8082
- Container Port: 80

---

## Create Application Data Directory

```bash
sudo mkdir -p /app/appuser/data
sudo chown -R appuser:appuser /app/appuser
```

Verify:

```bash
sudo ls -ld /app/appuser/data
```

---

## Create Web Content

Switch to application user:

```bash
su - appuser
```

Create the webpage:

```bash
echo "Welcome to PDD" > /app/appuser/data/index.html
```

Verify:

```bash
cat /app/appuser/data/index.html
```

Expected:

```text
Welcome to PDD
```

Return to the previous user:

```bash
exit
```

---

## Deploy Nginx Container

```bash
sudo docker run -d \
--name my-app1 \
-p 8082:80 \
-v /app/appuser/data:/usr/share/nginx/html \
nginx
```

---

## Verify Container

```bash
sudo docker ps
```

Expected:

```text
my-app1
0.0.0.0:8082->80/tcp
```

---

## Test Application

```bash
curl http://localhost:8082
```

Expected:

```text
Welcome to PDD
```

---

## Verify Persistence

Stop the container:

```bash
sudo docker stop my-app1
```

Remove the container:

```bash
sudo docker rm my-app1
```

Recreate:

```bash
sudo docker run -d \
--name my-app1 \
-p 8082:80 \
-v /app/appuser/data:/usr/share/nginx/html \
nginx
```

Verify:

```bash
curl http://localhost:8082
```

Expected:

```text
Welcome to PDD
```

---

## Verification Commands

```bash
sudo docker ps
curl http://localhost:8082
```

---

## Screenshots

Store screenshots in:

```text
screenshots/
```

Required screenshots:

1. create-data-directory.png
2. create-index-page.png
3. nginx-container-running.png
4. docker-ps-output.png
5. curl-test-output.png
6. persistence-verification.png

---

## Result

Successfully deployed an Nginx container named `my-app1` using Docker. Persistent storage was configured using a bind mount, ensuring application data remains a
