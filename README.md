# 24BAI10222-git-project
The Open Source Audit project explores the philosophy, licensing, and impact of open-source software. It includes analysis of a selected tool and practical Linux shell scripts to demonstrate system operations and automation, highlighting collaboration, transparency, and freedom in development.
# Git Open Source Audit
This repository contains the technical audit and shell scripts for the OSS Capstone Project.

## How to Run
1. Clone: `git clone https://github.com/your-username/repo-name`
2. Permission: `chmod +x scripts/*.sh`
3. Execute: `./scripts/identity.sh`

Execution Instructions
Before running the scripts, you must grant execution permissions to the .sh files.
1. Set Permissions:
         chmod +x *.sh
3. Run the Scripts:
   
   ./identity.sh - "Displays system info, kernel version, and the Git license (GPL v2)."
   ./inspector.sh - Verifies if Git is installed and prints its FOSS philosophy.
   ./auditor.sh - Scans system directories and checks Git config permissions.
   ./analyzer.sh /var/log/syslog git - Searches system logs for Git-related activity.
   ./manifesto.sh - An interactive tool to generate a personal OSS philosophy file.

your-24BAI10222-git-project/
├── README.md
└── scripts/
    ├── identity.sh
    ├── inspector.sh
    ├── auditor.sh
    ├── analyzer.sh
    └── manifesto.sh
