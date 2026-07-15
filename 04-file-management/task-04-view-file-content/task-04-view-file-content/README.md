# Task 04 - View File Contents

## Objective

Learn how to view file contents using cat, less, head, and tail.

## Commands Used

```bash id="md6tjr"
cat employee.txt

less employee.txt

head -n 3 employee.txt

tail -n 3 employee.txt
```

## Command Explanation

### cat

Displays the entire file content.

### less

Displays file content page by page and allows scrolling.

Controls:

* Space → Next page
* b → Previous page
* q → Quit

### head

Displays the first lines of a file.

### -n

Specifies the number of lines to display.

Example:

```bash id="74jnbj"
head -n 3 employee.txt
```

### tail

Displays the last lines of a file.

Example:

```bash id="m98fbn"
tail -n 3 employee.txt
```

## Procedure

1. Create employee.txt.
2. Add sample employee names.
3. View full file using cat.
4. View file using less.
5. Display first 3 lines using head.
6. Display last 3 lines using tail.

## Verification

```bash id="2ggzkg"
head -n 3 employee.txt
```

Expected:

```text id="k6nysb"
Akshay
Rahul
John
```

```bash id="x0c9rz"
tail -n 3 employee.txt
```

Expected:

```text id="0bllpw"
Mohan
Asha
Neha
```

## Real-world Usage

Used by Linux administrators to read:

* Configuration files
* Application logs
* User databases
* Backup reports

## Key Learnings

* cat displays full file contents.
* less is useful for large files.
* head displays the beginning of a file.
* tail displays the end of a file.
* -n specifies how many lines to display.

