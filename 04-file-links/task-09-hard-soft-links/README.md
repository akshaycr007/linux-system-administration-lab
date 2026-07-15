# Task 09 - Hard Links and Symbolic Links

## Objective

Learn how to create and manage Hard Links and Symbolic (Soft) Links in Linux.

## Commands Used

```bash
echo "Linux Administration" > original.txt

ln original.txt hardlink.txt

ls -li

rm original.txt

cat hardlink.txt

echo "Linux Admin Lab" > original.txt

ln -s original.txt softlink.txt

ls -l

cat softlink.txt

rm original.txt

cat softlink.txt
```

## Command Explanation

### ln

Creates a hard link.

Syntax:

```bash
ln source_file hardlink_name
```

Example:

```bash
ln original.txt hardlink.txt
```

### ln -s

Creates a symbolic (soft) link.

Syntax:

```bash
ln -s source_file softlink_name
```

Example:

```bash
ln -s original.txt softlink.txt
```

### ls -li

Displays file details along with inode numbers.

Example:

```bash
ls -li
```

### rm

Removes a file.

Example:

```bash
rm original.txt
```

## Procedure

### Hard Link

1. Create a file named original.txt.
2. Create a hard link named hardlink.txt.
3. Verify both files have the same inode number using ls -li.
4. Delete original.txt.
5. Confirm hardlink.txt still contains the data.

### Symbolic Link

1. Recreate original.txt.
2. Create a symbolic link named softlink.txt.
3. Verify the link using ls -l.
4. Access data through the symbolic link.
5. Delete original.txt.
6. Verify the symbolic link becomes broken.

## Verification

### Verify Hard Link

```bash
ls -li
```

Expected:

```text
12345 original.txt
12345 hardlink.txt
```

Both files share the same inode.

### Verify Soft Link

```bash
ls -l
```

Expected:

```text
softlink.txt -> original.txt
```

### Delete Original File

```bash
rm original.txt
```

Hard Link:

```bash
cat hardlink.txt
```

Expected:

```text
Linux Administration
```

Soft Link:

```bash
cat softlink.txt
```

Expected:

```text
No such file or directory
```

## Hard Link vs Soft Link

| Feature | Hard Link | Soft Link |
|----------|-----------|-----------|
| Same Inode | Yes | No |
| Works After Original Deleted | Yes | No |
| Shortcut | No | Yes |
| Can Link Directories | No | Yes |

## Real-world Usage

### Hard Links

- Backup systems
- File deduplication
- Multiple references to the same data

### Symbolic Links

- Application version management
- Configuration file redirection
- Software deployments
- Shared directory access

Example:

```bash
/app/current -> /app/releases/v2
```

## Key Learnings

- Hard links share the same inode as the original file.
- Soft links point to another file path.
- Hard links survive deletion of the original file.
- Soft links become broken when the original file is removed.
- ls -li is used to view inode numbers.

## Screenshots

Add screenshots for:

1. Creating original.txt
2. Creating hardlink.txt
3. ls -li output
4. Deleting original.txt
5. Accessing hardlink.txt
6. Creating softlink.txt
7. ls -l output
8. Accessing softlink.txt
9. Deleting original.txt again
10. Broken soft link error
