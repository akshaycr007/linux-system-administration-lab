# Task 03 - Copy, Move, and Rename Files

## Objective

Learn how to copy, move, and rename files using Linux commands.

## Commands Used

```bash
cp file1.txt file1-copy.txt

mkdir backups

cp file2.txt backups/

mv file1-copy.txt renamed-file.txt

mv renamed-file.txt backups/
```

## Command Explanation

### cp

Copies files from one location to another.

Example:

```bash
cp source_file destination_file
```

### mv

Moves files or renames files.

Rename example:

```bash
mv oldname.txt newname.txt
```

Move example:

```bash
mv file.txt directory/
```

### mkdir

Creates directories.

Example:

```bash
mkdir backups
```

## Procedure

1. Create two files: file1.txt and file2.txt.
2. Copy file1.txt to file1-copy.txt.
3. Create a backups directory.
4. Copy file2.txt into backups.
5. Rename file1-copy.txt to renamed-file.txt.
6. Move renamed-file.txt into backups.
7. Verify the results.

## Verification

Check current directory:

```bash
ls
```

Expected:

```text
backups
file1.txt
file2.txt
```

Check backup directory:

```bash
ls backups
```

Expected:

```text
file2.txt
renamed-file.txt
```

## Real-world Usage

Linux administrators use these commands to:

* Back up configuration files
* Organize logs
* Move application files
* Rename backup archives
* Manage server data

## Common Errors

### Error

```text
mv: cannot stat 'file1-copy.txt'
```

### Cause

The source file does not exist.

### Solution

Verify files first:

```bash
ls -l
```

Then create or copy the file again.

## Key Learnings

* cp copies files.
* mv can move files.
* mv can also rename files.
* Always verify files using ls before moving or renaming.


