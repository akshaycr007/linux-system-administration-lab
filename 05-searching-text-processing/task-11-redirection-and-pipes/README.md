# Task 11 - Input Output Redirection and Pipes

## Objective

Learn how to redirect command output to files and combine commands using pipes.

## Commands Used

```bash
echo "Linux Administration" > notes.txt

echo "Third Line" >> notes.txt

cat notes.txt

cat notes.txt | grep "Third"

ls -l | grep notes

ls | wc -l

ls -l > filelist.txt

cat filelist.txt
```

## Command Explanation

### >

Redirects output to a file and overwrites existing content.

Example:

```bash
echo "Hello" > file.txt
```

### >>

Redirects output and appends content.

Example:

```bash
echo "World" >> file.txt
```

### |

Pipe operator.

Sends output from one command to another command.

Example:

```bash
cat file.txt | grep Hello
```

### wc -l

Counts lines.

Example:

```bash
ls | wc -l
```

## Procedure

1. Create a file using output redirection.
2. Verify content using cat.
3. Overwrite existing content using >.
4. Append content using >>.
5. Filter content using grep and pipes.
6. Count files using wc -l.
7. Save command output into a file.

## Verification

Display file contents:

```bash
cat notes.txt
```

Expected Output:

```text
Second Line
Third Line
```

Search specific text:

```bash
cat notes.txt | grep Third
```

Expected Output:

```text
Third Line
```

Count files:

```bash
ls | wc -l
```

Expected Output:

```text
Number of files in the directory
```

## Real-world Usage

System administrators use redirection and pipes to:

- Save command output
- Analyze logs
- Filter large files
- Create reports
- Automate scripts

Examples:

```bash
grep ERROR app.log > errors.txt

cat auth.log | grep Failed

ps aux | grep nginx
```

## Key Learnings

- > overwrites file content.
- >> appends file content.
- | passes output between commands.
- Redirection and pipes are essential for automation.
- grep and pipes are commonly used together.

