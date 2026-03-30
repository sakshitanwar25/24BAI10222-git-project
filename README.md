# 24BAI10222-git-project

About This Project
This project audits Git as an open source tool. It includes a research report covering Git's history, licensing (GPLv2 vs MIT), ethics of open source, and a comparison with proprietary version control systems. Alongside the report, five Bash shell scripts were written and tested on Ubuntu Linux to demonstrate real-world scripting concepts tied to system administration and version control.

---

## Project Structure

```
open-source-audit-git/
│
├── README.md
├── report/
│   └── Sakshi_Git_Audit_Report.docx
└── scripts/
    ├── Script1_identify.sh        # Displays system info
    ├── Script2_inspector.sh       # Checks if Git is installed
    ├── Script3_auditor.sh         # Audits directory permissions & sizes
    ├── Script4_analyzer.sh        # Analyzes a log file for errors
    └── Script5_manifesto.sh       # Interactive file generator
```

---

## System Requirements

| Item | Requirement |
|---|---|
| OS | Ubuntu 20.04 or later (any Debian-based Linux) |
| Shell | Bash 4.x or above |
| Git | Version 2.x or above |
| Terminal | Any terminal emulator |

> **Windows users:** Use WSL (Windows Subsystem for Linux) or Git Bash to run these scripts.

---

## Setup Instructions

### Step 1 — Get the Project

Clone the repository:

```bash
git clone https://github.com/your-username/open-source-audit-git.git
cd open-source-audit-git
```

No internet? Download the ZIP from GitHub, then:

```bash
unzip open-source-audit-git.zip
cd open-source-audit-git
```

---

### Step 2 — Install Git

Check if Git is already installed:

```bash
git --version
```

If not installed:

```bash
sudo apt update
sudo apt install git -y
```

Verify:

```bash
git --version
# Expected: git version 2.x.x
```

---

### Step 3 — Configure Git

Set your identity so Git can attach it to commits:

```bash
git config --global user.name "YourName"
git config --global user.email "youremail@example.com"
```

Confirm it saved:

```bash
git config --list
```

---

### Step 4 — Make Scripts Executable

Do this once before running anything:

```bash
chmod +x scripts/*.sh
```

---

## Running the Scripts

### Script 1 — System Info

Prints OS name, kernel version, logged-in user, uptime, date, and hostname.

```bash
bash scripts/Script1_identify.sh
```

**Sample output:**
```
OS      : Ubuntu 22.04.3 LTS
Kernel  : 5.15.0-91-generic
User    : sakshi
Uptime  : up 2 hours, 14 minutes
Date    : Mon Mar 30 10:45:00 IST 2026
Hostname: sakshi-laptop
```

---

### Script 2 — Git Inspector

Checks whether Git is installed and prints the version with a status message.

```bash
bash scripts/Script2_inspector.sh
```

**Sample output:**
```
Git is installed. Version: 2.34.1
You have a modern Git version. You're good to go.
```

---

### Script 3 — Directory Auditor

Loops through key Linux system directories and prints their permissions and disk usage.

```bash
bash scripts/Script3_auditor.sh
```

**Sample output:**
```
Directory            Permissions     Size
----------------------------------------------------
/etc                 drwxr-xr-x      5.8M
/var                 drwxr-xr-x      2.1G
/tmp                 drwxrwxrwt      4.0K
/home                drwxr-xr-x      14G
/usr                 drwxr-xr-x      4.9G
```

---

### Script 4 — Log Analyzer

Takes a log file as an argument, counts error and warning lines, and prints a verdict.

```bash
bash scripts/Script4_analyzer.sh /var/log/syslog
```

No log file available? Create a quick sample:

```bash
echo -e "INFO started\nERROR disk read fail\nWARNING low memory\nERROR timeout" > sample.log
bash scripts/Script4_analyzer.sh sample.log
```

**Sample output:**
```
Total lines : 4
Errors found: 2
Warnings    : 1
--- First 5 error lines ---
1: ERROR disk read fail
2: ERROR timeout
Verdict: A few errors — review when possible.
```

---

### Script 5 — Manifesto Generator

An interactive script that asks three questions and saves your answers to a timestamped text file.

```bash
bash scripts/Script5_manifesto.sh
```

**What it asks:**
```
Your name: Sakshi
Your favourite open source tool: Git
Why does open source matter to you? It gives everyone equal access to good tools.
```

A file named `manifesto_YYYYMMDD_HHMMSS.txt` is created in your current directory.

---

## Troubleshooting

| Problem | Fix |
|---|---|
| `Permission denied` on any script | Run `chmod +x scripts/*.sh` first |
| `command not found: git` | Run `sudo apt install git -y` |
| Script 4 says "File not found" | Check the log file path you passed as the argument |
| Scripts don't run on Windows | Use WSL — install Ubuntu from the Microsoft Store |

---

## Dependencies

This project has **no external dependencies**. Everything runs on standard tools pre-installed on any Linux system — `bash`, `grep`, `awk`, `du`, `ls`, and `wc`. No pip, no npm, no virtual environments.

---
