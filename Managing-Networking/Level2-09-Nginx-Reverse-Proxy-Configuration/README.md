# Level2-09: Configure Nginx as a Reverse Proxy for Docker Container

## Objective

Configure Nginx as a reverse proxy to access the Docker container `my-app1` without specifying the container port.

---

## Environment

- OS: Ubuntu 24.04 LTS
- Web Server: Nginx
- Docker Container: my-app1
- Backend Service Port: 8082
- Reverse Proxy Port: 80

---

## Verify Container Status

Ensure the container is running before configuring the reverse proxy.

```bash
sudo docker ps
```

Expected output:

```text
my-app1
0.0.0.0:8082->80/tcp
```

---

## Install Nginx

Update package information:

```bash
sudo apt update
```

Install Nginx:

```bash
sudo apt install nginx -y
```

Verify installation:

```bash
nginx -v
```

---

## Start and Enable Nginx

Start the Nginx service:

```bash
sudo systemctl start nginx
```

Enable automatic startup:

```bash
sudo systemctl enable nginx
```

Verify service status:

```bash
sudo systemctl status nginx
```

Expected:

```text
active (running)
```

---

## Configure Reverse Proxy

Create a new Nginx configuration file:

```bash
sudo nano /etc/nginx/sites-available/my-app1
```

Add the following configuration:

```nginx
server {
    listen 80;

    location / {
        proxy_pass http://localhost:8082;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    }
}
```

Save and exit:

```text
CTRL + O
ENTER
CTRL + X
```

---

## Enable the Configuration

Create a symbolic link:

```bash
sudo ln -s /etc/nginx/sites-available/my-app1 /etc/nginx/sites-enabled/
```

Remove the default configuration:

```bash
sudo rm -f /etc/nginx/sites-enabled/default
```

---

## Validate Configuration

Test Nginx configuration:

```bash
sudo nginx -t
```

Expected:

```text
syntax is ok
test is successful
```

---

## Reload Nginx

Apply the new configuration:

```bash
sudo systemctl reload nginx
```

---

## Verify Reverse Proxy

Test locally:

```bash
curl http://localhost
```

Expected output:

```text
Welcome to PDD
```

Test from a browser:

```text
http://<server-ip>
```

Example:

```text
http://192.168.50.176
```

Expected page:

```text
Welcome to PDD
```

---

## Verification Commands

```bash
sudo docker ps
sudo nginx -t
sudo systemctl status nginx
curl http://localhost
```

---

## Screenshots

Store screenshots in:

```text
screenshots/
```

Required screenshots:

1. docker-container-running.png
2. nginx-installation.png
3. nginx-service-status.png
4. reverse-proxy-config.png
5. nginx-test.png
6. nginx-reload.png
7. curl-localhost.png
8. browser-output.png

---

## Result

Nginx was successfully configured as a reverse proxy for the Docker container `my-app1`. The application can now be accessed through port 80 without exposing the container's internal port directly.
