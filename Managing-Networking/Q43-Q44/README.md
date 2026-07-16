# Q43 & Q44 - Hostname Configuration and Hostname Resolution

## Objective

Configure hostnames on all virtual machines and verify communication using hostnames instead of IP addresses.

---

## Environment

| Machine | IP Address | Hostname |
|----------|------------|----------|
| VM1 | 192.168.50.176 | servera.lab.example.com |
| VM2 | 192.168.50.173 | serverb.lab.example.com |
| VM3 | 192.168.50.172 | workstation.lab.example.com |

Network Mode: Bridged Adapter

---

# Q43 - Configure Hostnames

## Commands Used

### VM1

```bash
sudo hostnamectl set-hostname servera.lab.example.com
```

### VM2

```bash
sudo hostnamectl set-hostname serverb.lab.example.com
```

### VM3

```bash
sudo hostnamectl set-hostname workstation.lab.example.com
```

## Verification

```bash
hostname
```

```bash
hostnamectl
```

## Expected Output

VM1

```text
servera.lab.example.com
```

VM2

```text
serverb.lab.example.com
```

VM3

```text
workstation.lab.example.com
```

---

# Q44 - Hostname Resolution and Communication

## Objective

Enable communication between virtual machines using hostnames instead of IP addresses.

## Configuration

Edited:

```text
/etc/hosts
```

Added the following entries:

```text
192.168.50.176 servera.lab.example.com servera
192.168.50.173 serverb.lab.example.com serverb
192.168.50.172 workstation.lab.example.com workstation
```

## Commands Used

Display hosts file:

```bash
cat /etc/hosts
```

Test hostname communication:

```bash
ping serverb.lab.example.com
```

```bash
ping workstation.lab.example.com
```

Verify hostname resolution:

```bash
getent hosts serverb.lab.example.com
```

## Verification

Successful ping between virtual machines using hostnames.

Example:

```bash
ping serverb.lab.example.com
```

Expected Output:

```text
PING serverb.lab.example.com (192.168.50.173)
```

---

# Real World Usage

System administrators use hostnames because:

- Easier to remember than IP addresses
- IP addresses may change
- Applications communicate using names
- Improves server management

Examples:

```text
database.company.local
webserver.company.local
backup.company.local
```

---

# Result

Successfully configured hostnames on all virtual machines and verified communication using hostname resolution.

---

# Screenshots

Add screenshots for:

1. hostname command on VM1
2. hostname command on VM2
3. hostname command on VM3
4. hostnamectl output
5. /etc/hosts configuration
6. ping serverb.lab.example.com
7. ping workstation.lab.example.com
8. getent hosts serverb.lab.example.com

---

# Key Learnings

- Configure hostnames using hostnamectl
- Verify hostname configuration
- Configure local name resolution using /etc/hosts
- Communicate using hostnames instead of IP addresses
- Verify hostname resolution using getent
