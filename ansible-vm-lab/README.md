# Multi-Node Automated Infrastructure Setup with Ansible & Docker

This repository provides a complete Infrastructure-as-Code (IaC) solution using **Ansible** to automatically configure multiple target Ubuntu nodes (`servera`, `serverb`, and `workernode`). 

Instead of logging into each virtual machine manually to run setup commands, Ansible configures all nodes simultaneously in seconds.

---

## 🏗️ Architecture & Topology

* **Control Node & Worker Node (`workernode`):** `192.168.50.122` (Local Workstation running Ansible)
* **Target Node A (`servera`):** `192.168.50.182`
* **Target Node B (`serverb`):** `192.168.50.55`

---

## 📁 Repository Structure

```text
ansible-vm-lab/
├── hosts           # Inventory file defining managed targets and IPs
├── setup_lab.yml   # Ansible playbook automating system setup
├── ansible.cfg     # Configuration file customizing execution options
└── README.md       # Project documentation
