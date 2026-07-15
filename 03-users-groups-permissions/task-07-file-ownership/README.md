# Task 07 - File Ownership Using chown and chgrp

## Objective

Learn how to view and modify file ownership and group ownership in Linux.

## Commands Used

```bash
touch company.txt

ls -l company.txt

sudo groupadd developers

sudo chgrp developers company.txt

sudo chown student1:developers company.txt

ls -l company.txt
```

## Command Explanation

### ls -l

Displays detailed file information including:

- Permissions
- Owner
- Group
- File size

Example:

```bash
ls -l company.txt
```

### chown

Changes file owner and group.

Syntax:

```bash
chown owner:group filename
```

Example:

```bash
sudo chown student1:developers company.txt
```

### chgrp

Changes only the group ownership.

Syntax:

```bash
chgrp groupname filename
```

Example:

```bash
sudo chgrp developers company.txt
```

### groupadd

Creates a new group.

Example:

```bash
sudo groupadd developers
```

## Procedure

1. Create a file named company.txt.
2. Check file ownership using ls -l.
3. Create a new group named developers.
4. Change the group ownership of company.txt.
5. Change both owner and group ownership.
6. Verify changes using ls -l.

## Verification

Before ownership change:

```text
-rw-r--r-- 1 student1 student1 company.txt
```

After group change:

```text
-rw-r--r-- 1 student1 developers company.txt
```

After owner and group change:

```text
-rw-r--r-- 1 student1 developers company.txt
```

## Real-world Usage

Linux administrators use ownership management for:

- Web server files
- Application directories
- Log directories
- Shared project folders
- Backup locations

Example:

```bash
sudo chown -R www-data:www-data /var/www/html
```

This allows a web server to access website files correctly.

## Difference Between chmod and chown

| Command | Purpose |
|----------|----------|
| chmod | Changes permissions |
| chown | Changes owner and group |
| chgrp | Changes group only |

## Key Learnings

- Every file has an owner.
- Every file belongs to a group.
- chown changes ownership.
- chgrp changes group ownership.
- Ownership is important for application access and security.

## Screenshots

Add screenshots for:

1. Initial ls -l output
2. groupadd developers
3. chgrp developers company.txt
4. chown student1:developers company.txt
5. Final ls -l output
