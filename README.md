# oss-audit--24BAI10254-
Vityarthi Linux-MySQL


# Open Source Software Project

## 👤 Student Details

* **Name:** Aaryan Saxena
* **Roll Number:** [24BAI10254]

---

## 💻 Chosen Software

* **Software:** MySQL
* **Platform Used:** WSL Ubuntu (Linux environment)

---

## 📜 Project Description

This project demonstrates the use of Linux shell scripting to analyze and interact with an open-source software system (MySQL). It includes five scripts that perform system inspection, package verification, filesystem auditing, log analysis, and user interaction.

---

## 📂 Scripts Overview

### 🔹 Script 1: System Identity Report

* Displays system information such as:

  * OS version
  * Kernel version
  * Current user
  * Uptime
* Checks whether MySQL is installed and shows its version.

---

### 🔹 Script 2: FOSS Package Inspector

* Verifies if MySQL is installed using package manager (`dpkg`)
* Displays:

  * Version
  * Maintainer
  * Description
* Uses a case statement to print a short note about the software.

---

### 🔹 Script 3: Disk and Permission Auditor

* Checks important Linux directories:

  * `/etc`, `/var/log`, `/home`, `/usr/bin`, `/tmp`
* Displays:

  * Permissions
  * Owner and group
  * Disk usage
* Specifically verifies MySQL configuration directory (`/etc/mysql`)

---

### 🔹 Script 4: Log File Analyzer

* Reads MySQL log file (`/var/log/mysql/error.log`)
* Counts occurrences of a keyword (default: "error")
* Displays last few matching log entries
* Demonstrates real-world log analysis

---

### 🔹 Script 5: Manifesto Generator

* Takes user input
* Generates a personalized open-source manifesto
* Saves output to a text file

---

## ⚙️ Dependencies Required

Make sure the following are installed:

```bash
sudo apt update
sudo apt install mysql-server -y
```

---

## ▶️ How to Run the Scripts

### Step 1: Open Linux Terminal (WSL Ubuntu)

---

### Step 2: Navigate to Project Directory

```bash
cd /path/to/your/project
```

---

### Step 3: Make Scripts Executable

```bash
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh
```

---

### Step 4: Run Scripts

#### Script 1

```bash
./script1.sh
```

#### Script 2

```bash
./script2.sh
```

#### Script 3

```bash
./script3.sh
```

#### Script 4 (requires sudo for log access)

```bash
sudo ./script4.sh /var/log/mysql/error.log error
```

#### Script 5

```bash
./script5.sh
```

---

## ⚠️ Notes

* Script 4 requires **root privileges** because MySQL log files are restricted.
* If no "error" keyword is found, try:

  ```bash
  sudo ./script4.sh /var/log/mysql/error.log mysql
  ```
* All scripts were tested on **WSL Ubuntu (Linux environment)**.

---

## 📌 Conclusion

This project provides hands-on experience with Linux shell scripting and demonstrates how open-source tools like MySQL integrate with the Linux operating system. It also highlights practical concepts such as system monitoring, package management, and log analysis.

---
