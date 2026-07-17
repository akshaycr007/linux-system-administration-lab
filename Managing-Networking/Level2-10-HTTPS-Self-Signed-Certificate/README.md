# Level2-10: Configure HTTPS Using a Self-Signed Certificate

## Objective

Configure HTTPS access for the reverse-proxied application using a self-signed SSL certificate and Nginx.

---

## Environment

- OS: Ubuntu 24.04 LTS
- Web Server: Nginx
- Docker Container: my-app1
- HTTPS Port: 443
- Certificate Type: Self-Signed SSL Certificate

---

## Create SSL Certificate Directory

Create a directory to store SSL certificates:

```bash
sudo mkdir -p /etc/nginx/ssl
```

Verify:

```bash
ls -ld /etc/nginx/ssl
```

---

## Generate Self-Signed SSL Certificate

Generate a self-signed certificate and private key:

```bash
sudo openssl req -x509 -nodes -days 365 \
-newkey rsa:2048 \
-keyout /etc/nginx/ssl/pddtestapp.key \
-out /etc/nginx/ssl/pddtestapp.crt
```

Sample values:

```text
Country Name: IN
State or Province Name: Kerala
Locality Name: Kochi
Organization Name: PDD
Organizational Unit Name: IT
Common Name: pddtestapp.luluone.com
Email Address: admin@example.com
```

Verify:

```bash
sudo ls -l /etc/nginx/ssl
```

Expected:

```text
pddtestapp.crt
pddtestapp.key
```

---

## Configure HTTPS in Nginx

Edit the reverse proxy configuration:

```bash
sudo nano /etc/nginx/sites-available/my-app1
```

Replace the contents with:

```nginx
server {
    listen 80;
    return 301 https://$host$request_uri;
}

server {
    listen 443 ssl;

    ssl_certificate /etc/nginx/ssl/pddtestapp.crt;
    ssl_certificate_key /etc/nginx/ssl/pddtestapp.key;

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

## Verify Nginx Configuration

Test the configuration:

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

Apply the configuration:

```bash
sudo systemctl reload nginx
```

Verify:

```bash
sudo systemctl status nginx
```

Expected:

```text
active (running)
```

---

## Allow HTTPS Through Firewall

Allow HTTPS traffic:

```bash
sudo ufw allow 443/tcp
```

Verify:

```bash
sudo ufw status
```

Expected:

```text
443/tcp ALLOW Anywhere
```

---

## Verify HTTPS Access

Test locally:

```bash
curl -k https://localhost
```

Expected output:

```text
Welcome to PDD
```

---

## Browser Verification

Open a browser and navigate to:

```text
https://<server-ip>
```

Example:

```text
https://192.168.50.176
```

Because the certificate is self-signed, the browser will display a security warning.

Proceed to the site by selecting:

```text
Advanced → Proceed
```

Expected page:

```text
Welcome to PDD
```

---

## Verification Commands

```bash
sudo nginx -t
sudo systemctl reload nginx
sudo ufw status
curl -k https://localhost
```

---

## Screenshots

Store screenshots in:

```text
screenshots/
```

Required screenshots:

1. ssl-directory-created.png
2. certificate-generation.png
3. ssl-files-created.png
4. nginx-https-configuration.png
5. nginx-test-success.png
6. nginx-service-status.png
7. ufw-https-rule.png
8. curl-https-output.png
9. browser-security-warning.png
10. browser-https-success.png

---

## Result

Successfully configured HTTPS for the application using a self-signed SSL certificate and Nginx reverse proxy. HTTP traffic is redirected to HTTPS, and secure communication is enabled through SSL/TLS encryption.
