# Level2-12: Automated Log Backup Using Cron

## Objective

Configure a cron job to automatically create a compressed backup of `/var/log` every day at 2:00 AM and store it in the `/backup` directory with the current date in the filename.

---

## Environment

- OS: Ubuntu 24.04 LTS
- Scheduler: Cron
- Backup Directory: /backup
- Source Directory: /var/log
- Script Location: /usr/local/bin/log_backup.sh

---

## Create Backup Directory

Create a directory to store backup archives.

```bash
sudo mkdir -p /backup
```

Verify:

```bash
ls -ld /backup
```

Expected:

```text
drwxr-xr-x root root /backup
```

---

## Create Backup Script

Create the backup script:

```bash
sudo nano /usr/local/bin/log_backup.sh
```

Add the following content:

```bash
#!/bin/bash

DATE=$(date +%F)

tar -czf /backup/varlog-$DATE.tar.gz /var/log
```

Save and exit:

```text
CTRL + O
ENTER
CTRL + X
```

---

## Make Script Executable

```bash
sudo chmod +x /usr/local/bin/log_backup.sh
```

Verify:

```bash
ls -l /usr/local/bin/log_backup.sh
```

Expected:

```text
-rwxr-xr-x
```

---

## Test the Backup Script

Execute the script manually:

```bash
sudo /usr/local/bin/log_backup.sh
```

Verify the backup file:

```bash
ls -lh /backup
```

Example:

```text
varlog-2026-07-17.tar.gz
```

---

## Configure Cron Job

Edit the root crontab:

```bash
sudo crontab -e
```

Add the following entry:

```cron
0 2 * * * /usr/local/bin/log_backup.sh
```

Explanation:

```text
Minute : 0
Hour   : 2
Day    : *
Month  : *
Weekday: *
```

This job runs every day at 2:00 AM.

---

## Verify Cron Configuration

Display current cron jobs:

```bash
sudo crontab -l
```

Expected:

```text
0 2 * * * /usr/local/bin/log_backup.sh
```

If Level2-11 is already configured, both jobs may appear:

```text
0 0 * * * /usr/local/bin/cleanup_large_files.sh
0 2 * * * /usr/local/bin/log_backup.sh
```

---

## Verification Commands

```bash
sudo /usr/local/bin/log_backup.sh
ls -lh /backup
sudo crontab -l
```

---

## Screenshots

Store screenshots in:

```text
screenshots/
```

Required screenshots:

1. backup-directory-created.png
2. backup-script-created.png
3. script-permission.png
4. backup-script-execution.png
5. backup-file-created.png
6. cron-job-added.png
7. crontab-list.png

---

## Result

Successfully configured an automated cron job to create a compressed backup of `/var/log` every day at 2:00 AM. Backup archives are stored in `/backup` with the current date included in the filename for easy identification and retention.
