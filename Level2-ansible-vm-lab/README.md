# 🚀 Ubuntu System Administration, Docker & Reverse Proxy Automation

Automated deployment and configuration for Ubuntu Linux using **Ansible**. This repository configures security policies, user management, containerized services (Nginx & PostgreSQL), an SSL reverse proxy, and automated daily system maintenance.

---

## 📌 Project Overview

This project satisfies the following system administrator tasks:
* **System Maintenance:** Automated package cache updates and dependency management.
* **Firewall Security (UFW):** Strict inbound policy allowing public HTTP/HTTPS traffic while restricting SSH access to a specific subnet (`192.168.50.0/24`).
* **User Management:** Provisioning of `appuser` with home directory `/app/appuser`.
* **Containerization (Docker):**
  * Nginx container (`my-app1`) serving persistent static content (`"Welcome to PDD"`) on port `8082`.
  * PostgreSQL deployment managed via Docker Compose.
* **Reverse Proxy & HTTPS:** Nginx reverse proxy configured with a self-signed SSL certificate for domain `pddtestapp.luluone.com`.
* **Automated Cron Jobs:** Daily 2:00 AM maintenance script to remove files larger than 500MB in `/app/appuser/data` and compress `/var/log` into `/backup`.

---

## 🛠️ Tech Stack

* **OS:** Ubuntu Linux
* **Automation:** Ansible
* **Web Server / Proxy:** Nginx, OpenSSL
* **Containerization:** Docker Engine, Docker Compose
* **Database:** PostgreSQL 15 (Alpine)
* **Firewall:** UFW

---

## 📂 Repository Structure

```text
.
├── setup_task.yml        # Main Ansible Automation Playbook
├── hosts                 # Ansible Inventory File
└── README.md             # Project Documentation


Run the Ansible playbook from your Workstation:

Bash
ansible-playbook -i hosts setup_task.yml -k -K
🔍 Verification Commands
Run these on servera to verify:

1. Web App & HTTPS Proxy
Bash
curl -k --resolve pddtestapp.luluone.com:443:127.0.0.1 [https://pddtestapp.luluone.com](https://pddtestapp.luluone.com)
2. Docker Containers
Bash
sudo docker ps
3. Firewall Rules
Bash
sudo ufw status verbose
4. Maintenance Script & Backups
Bash
sudo /usr/local/bin/daily_maintenance.sh
ls -lh /backup
sudo crontab -l
👤 Author
Name: Akshay

Task: System Administration & Container Deployment Automation


---

## ⚙️ Section-by-Section Explanation & Definitions

### 1. Title & Executive Summary
```markdown
# 🚀 Ubuntu System Administration, Docker & Reverse Proxy Automation

Automated deployment and configuration for Ubuntu Linux using **Ansible**.
# (H1 Heading): Creates the main page title rendered in large, bold text at the top of the GitHub repository.

Summary Text: Immediately informs visitors/evaluators what the project is, what operating system it targets, and that Ansible was used to achieve automation.

2. 📌 Project Overview
Markdown
## 📌 Project Overview
* **System Maintenance:** ...
* **Firewall Security (UFW):** ...
## (H2 Heading): Creates a major structural section header.

* (Bullet Points): Outlines every individual task requirement in clean, scannable list format.

**Text** (Bold): Highlights key technical components (e.g., UFW, Docker, Nginx, SSL) for fast scanning.

3. 🛠️ Tech Stack & 📂 Repository Structure
Markdown
## 🛠️ Tech Stack
* **OS:** Ubuntu Linux
...

## 📂 Repository Structure
```text
.
├── setup_task.yml        # Main Ansible Automation Playbook
├── hosts                 # Ansible Inventory File
└── README.md             # Project Documentation
* **Tech Stack**: Lists the software, tools, and protocols utilized so readers instantly understand the technology environment without sifting through code.
* **` ```text ` (Fenced Code Block)**: Visualizes the project's folder layout using ASCII tree formatting, showing how files are organized inside the Git repository.

---

### 4. 🚀 Execution Section
```markdown
## 🚀 Execution

Run the Ansible playbook from your Workstation:

```bash
ansible-playbook -i hosts setup_task.yml -k -K
* **` ```bash ` (Syntax-Highlighted Code Block)**: Provides the exact shell command required to run the deployment.
* **Flags Explained**:
  * **`-i hosts`**: Specifies the custom target server inventory.
  * **`-k`**: Prompts for the remote SSH password (`akshay`).
  * **`-K`**: Prompts for the remote `sudo` privilege escalation password (`akshay`).

---

### 5. 🔍 Verification Commands
```markdown
## 🔍 Verification Commands

### 1. Web App & HTTPS Proxy
```bash
curl -k --resolve pddtestapp.luluone.com:443:127.0.0.1 [https://pddtestapp.luluone.com](https://pddtestapp.luluone.com)
* **`###` (H3 Sub-heading)**: Categorizes testing procedures into logical sub-sections matching the question tasks.
* **`curl -k --resolve ...`**: Demonstrates to anyone testing your setup how to confirm SSL termination and Nginx reverse proxy routing directly from the command line.

---

### 6. 👤 Author Section
```markdown
## 👤 Author
* **Name:** Akshay
* **Task:** System Administration & Container Deployment Automation
