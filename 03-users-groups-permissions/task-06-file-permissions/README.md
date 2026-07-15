# Task 06 - File Permissions Using chmod

## Objective

Learn how to view and modify file permissions using the chmod command.

## Commands Used

```bash
touch testfile.txt

ls -l

chmod +x testfile.txt

chmod -x testfile.txt

chmod 777 testfile.txt

chmod 444 testfile.txt
```

## Command Explanation

### ls -l

Displays detailed file information including permissions.

Example:

```bash
ls -l
```

### chmod

Changes file permissions.

Example:

```bash
chmod 777 testfile.txt
```

### +x

Adds execute permission.

Example:

```bash
chmod +x testfile.txt
```

### -x

Removes execute permission.

Example:

```bash
chmod -x testfile.txt
```

## Permission Numbers

| Number | Permission |
|----------|------------|
| 777 | rwxrwxrwx |
| 755 | rwxr-xr-x |
| 644 | rw-r--r-- |
| 600 | rw------- |
| 444 | r--r--r-- |

## Procedure

1. Create a file named testfile.txt.
2. Check current permissions using ls -l.
3. Add execute permission using chmod +x.
4. Remove execute permission using chmod -x.
5. Grant full permissions using chmod 777.
6. Make the file read-only using chmod 444.
7. Verify changes after each command.

## Verification

Check permissions:

```bash
ls -l testfile.txt
```

After:

```bash
chmod 777 testfile.txt
```

Expected:

```text
-rwxrwxrwx
```

After:

```bash
chmod 444 testfile.txt
```

Expected:

```text
-r--r--r--
```

## Real-world Usage

Linux administrators use chmod to:

- Secure sensitive files
- Allow script execution
- Restrict unauthorized access
- Manage application permissions

## Key Learnings

- chmod changes file permissions.
- +x adds execute permission.
- -x removes execute permission.
- 777 grants full access.
- 444 makes a file read-only.
- Permissions are displayed using ls -l.

## Screenshots

Add screenshots for:

1. Initial ls -l output
2. chmod +x testfile.txt
3. chmod -x testfile.txt
4. chmod 777 testfile.txt
5. chmod 444 testfile.txt
6. Final ls -l output
