# Q45 - Q51 Network Administration Tasks

## Objective

Perform advanced Linux networking tasks including network path tracing, monitoring active connections, viewing listening ports, configuring secondary IP addresses, testing connectivity, and analyzing routing tables.

---

# Environment

| Machine | Hostname | Primary IP |
|----------|-----------|------------|
| VM1 | servera.lab.example.com | 192.168.50.176 |
| VM2 | serverb.lab.example.com | 192.168.50.173 |
| VM3 | workstation.lab.example.com | 192.168.50.172 |

Network Mode: Bridged Adapter

---

# Q45 - Trace Network Route

## Objective

Identify the path packets take from the Linux server to a remote destination.

## Commands Used

### Install traceroute

```bash
sudo apt update
sudo apt install traceroute -y
```

### Trace route to Google

```bash
traceroute google.com
```

## Verification

Observe the list of network hops between the server and Google.

## Real World Usage

- Troubleshooting network latency
- Identifying routing issues
- Verifying connectivity paths

---

# Q46 - Display Active Network Connections

## Objective

View all active TCP and UDP network connections.

## Command

```bash
sudo ss -tunap
```

## Command Options

| Option | Description |
|----------|-------------|
| -t | Show TCP connections |
| -u | Show UDP connections |
| -n | Display numeric addresses |
| -a | Show all connections |
| -p | Show process information |

## Verification

Review established and active network connections.

## Real World Usage

- Monitor server activity
- Investigate suspicious connections
- Troubleshoot application communication

---

# Q47 - Display Listening Ports

## Objective

Display services currently listening for incoming network connections.

## Command

```bash
sudo ss -tulnp
```

## Command Options

| Option | Description |
|----------|-------------|
| -t | TCP sockets |
| -u | UDP sockets |
| -l | Listening sockets |
| -n | Numeric addresses |
| -p | Process information |

## Verification

Verify active listening services such as SSH, HTTP, HTTPS, and database services.

## Real World Usage

- Service verification
- Security auditing
- Port management

---

# Q48 - Configure Secondary IP Address on VM1

## Objective

Assign an additional IP address to the network interface.

## Command

```bash
sudo ip addr add 192.168.200.101/24 dev enp0s3
```

> Replace `enp0s3` with the actual interface name if different.

## Verification

```bash
ip addr
```

Expected:

```text
192.168.50.176/24
192.168.200.101/24
```

## Real World Usage

- Multi-homed servers
- Application segregation
- Management and production networks

---

# Q49 - Configure Secondary IP Address on VM2

## Objective

Assign a secondary IP address to VM2.

## Command

```bash
sudo ip addr add 192.168.200.102/24 dev enp0s3
```

> Replace `enp0s3` with the actual interface name if different.

## Verification

```bash
ip addr
```

Expected:

```text
192.168.50.173/24
192.168.200.102/24
```

## Real World Usage

- Multiple service endpoints
- Dedicated management networks
- High availability environments

---

# Q50 - Verify Secondary IP Connectivity

## Objective

Verify communication between the newly assigned secondary IP addresses.

## Commands

### From VM1

```bash
ping 192.168.200.102
```

### From VM2

```bash
ping 192.168.200.101
```

## Verification

Successful ICMP replies between secondary IP addresses.

Expected:

```text
64 bytes from 192.168.200.102
```

```text
64 bytes from 192.168.200.101
```

## Real World Usage

- Network validation
- Application network testing
- Infrastructure verification

---

# Q51 - Display Routing Table

## Objective

View the Linux routing table and default gateway configuration.

## Command

```bash
ip route
```

## Example Output

```text
default via 192.168.50.1 dev enp0s3
192.168.50.0/24 dev enp0s3
192.168.200.0/24 dev enp0s3
```

## Verification

Confirm:

- Default gateway exists
- Local networks are reachable
- Secondary network appears in routing table

## Real World Usage

- Troubleshooting network connectivity
- Gateway verification
- Routing analysis

---

# Screenshots

Add the following screenshots to the `screenshots/` folder:

1. q45-traceroute.png
2. q46-ss-tunap.png
3. q47-listening-ports.png
4. q48-secondary-ip-vm1.png
5. q49-secondary-ip-vm2.png
6. q50-secondary-ip-ping.png
7. q51-routing-table.png

---

# Key Learnings

- Trace packet routes across networks using traceroute
- Monitor active TCP and UDP connections
- Display listening services and ports
- Configure multiple IP addresses on a Linux server
- Verify connectivity between network interfaces
- Analyze and troubleshoot Linux routing tables

---

# Result

Successfully completed Q45-Q51 networking tasks by:

- Tracing network paths
- Monitoring active connections
- Viewing listening ports
- Configuring secondary IP addresses
- Testing inter-host communication
- Verifying routing configurations

All networking objectives were completed successfully.

---

# Folder Structure

```text
Managing-Networking/
└── Q45-Q51/
    ├── README.md
    └── screenshots/
        ├── q45-traceroute.png
        ├── q46-ss-tunap.png
        ├── q47-listening-ports.png
        ├── q48-secondary-ip-vm1.png
        ├── q49-secondary-ip-vm2.png
        ├── q50-secondary-ip-ping.png
        └── q51-routing-table.png
```

---

# Git Commands

```bash
git status
git add .
git commit -m "Completed Q45-Q51 advanced networking tasks"
git push origin main
```
