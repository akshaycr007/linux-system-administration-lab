# Level 2 - Task 2: Configure UFW Firewall

## Objective

Configure UFW (Uncomplicated Firewall) to allow SSH, HTTP, and HTTPS traffic.

## Commands Used

### Check Status

```bash
sudo ufw status
```

### Allow SSH

```bash
sudo ufw allow 22/tcp
```

### Allow HTTP

```bash
sudo ufw allow 80/tcp
```

### Allow HTTPS

```bash
sudo ufw allow 443/tcp
```

### Enable Firewall

```bash
sudo ufw enable
```

### Verify Rules

```bash
sudo ufw status numbered
```

## Verification

Confirmed that:

- SSH (22) is allowed
- HTTP (80) is allowed
- HTTPS (443) is allowed
- UFW service is active

## Real World Usage

Firewalls are used to:

- Protect servers
- Restrict unauthorized access
- Control network traffic
- Improve security

## Result

Successfully configured and enabled UFW firewall with required rules.
