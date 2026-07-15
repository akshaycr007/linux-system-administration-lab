# Task 10 - Search Text Using grep

## Objective

Learn how to search text inside files using the grep command.

## Commands Used

```bash
cat app.log

grep "ERROR" app.log

grep "INFO" app.log

echo "error network failure" >> app.log

grep -i "error" app.log

grep -n "ERROR" app.log

grep -c "ERROR" app.log

grep -v "INFO" app.log
```

## Command Explanation

### grep

Searches text inside files.

Syntax:

```bash
grep "pattern" filename
```

Example:

```bash
grep "ERROR" app.log
```

### Options Used

#### -i

Ignore uppercase and lowercase differences.

Example:

```bash
grep -i "error" app.log
```

#### -n

Display line numbers.

Example:

```bash
grep -n "ERROR" app.log
```

#### -c

Count matching lines.

Example:

```bash
grep -c "ERROR" app.log
```

#### -v

Show lines that do not match the pattern.

Example:

```bash
grep -v "INFO" app.log
```

## Procedure

1. Create a sample log file.
2. Search for ERROR messages.
3. Search for INFO messages.
4. Perform case-insensitive searches.
5. Display line numbers.
6. Count matching entries.
7. Display non-matching lines.

## Verification

Search ERROR entries:

```bash
grep "ERROR" app.log
```

Expected Output:

```text
ERROR Database Connection Failed
ERROR Backup Failed
```

Count ERROR entries:

```bash
grep -c "ERROR" app.log
```

Expected Output:

```text
2
```

## Real-world Usage

System administrators use grep to:

- Search log files
- Find errors
- Troubleshoot services
- Check login failures
- Search configuration files

Examples:

```bash
grep "Failed" /var/log/auth.log

grep "ERROR" application.log

grep "nginx" /etc/services
```

## Key Learnings

- grep searches text inside files.
- -i ignores case sensitivity.
- -n displays line numbers.
- -c counts matches.
- -v shows non-matching lines.

## Screenshots

Add screenshots for:

1. Creating app.log
2. grep "ERROR" app.log
3. grep "INFO" app.log
4. grep -i "error" app.log
5. grep -n "ERROR" app.log
6. grep -c "ERROR" app.log
7. grep -v "INFO" app.log
