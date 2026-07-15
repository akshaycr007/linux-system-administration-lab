# Task 05 - Search Files and Directories Using find

## Objective

Learn how to search for files and directories using the find command.

## Commands Used

```bash
find .

find . -name report.txt

find . -name "*.txt"

find . -type d

find . -type f

find . -name "*.log"
```

## Command Explanation

### find

Searches files and directories.

### .

Current directory.

### -name

Search by filename.

Example:

```bash
find . -name report.txt
```

### -type d

Display directories only.

Example:

```bash
find . -type d
```

### -type f

Display files only.

Example:

```bash
find . -type f
```

## Procedure

1. Create directories docs, backups and logs.
2. Create sample files.
3. Search for a specific file.
4. Search for all .txt files.
5. Search only directories.
6. Search only files.
7. Search for log files.

## Verification

```bash
find . -type d
```

Expected:

```text
.
./docs
./backups
./logs
```

```bash
find . -type f
```

Expected:

```text
./docs/report.txt
./docs/project.txt
./backups/data.tar
./logs/app.log
```

## Real-world Usage

- Find configuration files
- Find log files
- Locate backup archives
- Troubleshoot missing files
- Search large directory structures

## Key Learnings

- find searches files and directories.
- -name searches by filename.
- -type d shows directories only.
- -type f shows files only.


