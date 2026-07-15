# Task 02 - Create Directories and Files

## Objective

Learn how to create directories, nested directories, and files in Linux.

## Commands Used

```bash
mkdir project
cd project
mkdir docs scripts backups
touch file1.txt
touch file2.txt file3.txt file4.txt
mkdir -p lab/day1/logs
ls -R
```

## Command Explanation

### mkdir

Creates directories.

### mkdir -p

Creates parent directories automatically.

### touch

Creates empty files.

### cd

Changes the current directory.

### ls -R

Lists files and directories recursively.

## Procedure

1. Create a project directory.
2. Move into the directory.
3. Create docs, scripts, and backups folders.
4. Create multiple files.
5. Create nested directories using mkdir -p.
6. Verify structure using ls -R.

## Verification

```bash
ls -R
```

Expected structure:

```text
project
├── backups
├── docs
├── scripts
├── file1.txt
├── file2.txt
├── file3.txt
├── file4.txt
└── lab
    └── day1
        └── logs
```

## Real-world Usage

Used to create application directories, backup locations, log folders, and project structures on Linux servers.

## Key Learnings

* Linux organizes data using directories and files.
* mkdir creates directories.
* touch creates files.
* mkdir -p creates nested directories automatically.

## Screenshots

Add screenshots for:

1. mkdir commands
2. touch commands
3. ls output
4. ls -R output
