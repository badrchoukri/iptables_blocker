# 🔥 Simple Firewall IP Blocker (iptables)

A lightweight Bash script that blocks a specific IP address from accessing common services on a Linux machine using **iptables**.

## 📌 Features

- Blocks an IP from:
  - SSH (22)
  - HTTP (80)
  - HTTPS (443)
  - Telnet (23)
  - FTP (21)
- Displays updated firewall rules
- Simple and easy to use
- Includes help option (`-h`)

---

## 🛠️ Technologies Used

- Bash
- iptables (Linux Firewall)

---

## 🚀 Usage

### 1️⃣ Give execution permission:

```bash
chmod +x firewall_blocker.sh
```
### 2️⃣ Run the script:
```bash
sudo ./firewall_blocker.sh <IP_ADDRESS>
```
# Example: #
```bash
sudo ./firewall_blocker.sh 192.168.1.100
```

## ❓ Help Menu:
```bash
./firewall_blocker.sh -h
```

--- 

## 📖 How It Works

# The script:

- Checks if iptables is installed.

- Takes an IP address as input.

- Adds firewall rules to block access to selected ports.

- Displays the current firewall rules.
