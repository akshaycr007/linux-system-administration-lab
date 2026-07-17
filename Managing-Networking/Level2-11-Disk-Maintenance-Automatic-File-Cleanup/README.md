# Level2-11: Disk Maintenance - Automatic File Cleanup

## Objective

Automatically delete files larger than 500 MB every day under `/app/appuser/data`.

---

## Environment

- OS: Ubuntu 24.04 LTS
- Scheduler: Cron
- Script Location: /usr/local/bin/cleanup_large_files.sh
- Target Directory: /app/appuser/data

---

## Create Cleanup Script

```bash
sudo nano /usr/local/bin/cleanup_large_files.sh
```

Script:

```bash
#!/bin/bash

find /app/appuser/data -type f -size +500M -delete
```

Make executable:

```bash
sudo chmod +x /usr/local/bin/cleanup_large_files.sh
```

---

## Test Cleanup Script

Create a test file:

```bash
sudo fallocate -l 600M /app/appuser/data/testfile.img
```

Run:

```bash
sudo /usr/local/bin/cleanup_large_files.sh
```

Verify:

```bash
ls -lh /app/appuser/data
```

---

## Configure Cron Job

Edit crontab:

```bash
sudo crontab -e
```

Add:

```cron
0 0 * * * /usr/local/bin/cleanup_large_files.sh
```

---

## Verify Cron Configuration

```bash
sudo crontab -l
```

Expected:

```text
0 0 * * * /usr/local/bin/cleanup_large_files.sh
```

---

## Screenshots

1. cleanup-script-created.png
2. script-permission.png
3. test-file-created.png
4. cleanup-script-executed.png
5. cron-job-added.png
6. crontab-list.png

---

## Result

Successfully configured automated disk maintenance using Cron to delete files larger than 500 MB daily under `/app/appuser/data`.
