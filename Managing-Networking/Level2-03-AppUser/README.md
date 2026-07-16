# Level 2 - Task 3: Create appuser

## Objective

Create a user named appuser with a custom home directory.

## User Details

Username: appuser

Home Directory:

/app/appuser

Shell:

/bin/bash

## Commands Used

```bash
sudo mkdir -p /app
sudo useradd -m -d /app/appuser -s /bin/bash appuser
sudo passwd appuser
```

## Verification

```bash
id appuser
ls -ld /app/appuser
su - appuser
pwd
whoami
```

## Result

Successfully created appuser with a custom home directory and verified login access.
