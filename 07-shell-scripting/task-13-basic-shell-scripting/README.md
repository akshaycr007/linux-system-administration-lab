# Task 13 - Basic Shell Scripting

## Objective

Learn how to create, execute, and use basic shell scripts in Linux.

## Commands Used

```bash
chmod +x hello.sh

./hello.sh

./userinfo.sh

./input.sh
```

## Scripts Created

### hello.sh

```bash
#!/bin/bash

echo "Hello Linux Administrator"
echo "Welcome to Shell Scripting"
```

### userinfo.sh

```bash
#!/bin/bash

NAME="Student1"

echo "User Name: $NAME"
```

### input.sh

```bash
#!/bin/bash

echo "Enter your name:"
read NAME

echo "Welcome $NAME"
```

## Command Explanation

### #!/bin/bash

Shebang.

Tells Linux to execute the script using Bash.

### echo

Displays text on the screen.

Example:

```bash
echo "Hello"
```

### read

Accepts input from the user.

Example:

```bash
read NAME
```

### chmod +x

Makes a script executable.

Example:

```bash
chmod +x hello.sh
```

### ./script.sh

Executes the script.

Example:

```bash
./hello.sh
```

## Procedure

1. Create hello.sh.
2. Create userinfo.sh.
3. Create input.sh.
4. Make all scripts executable.
5. Run each script.
6. Verify output.

## Verification

Run:

```bash
./hello.sh
```

Expected Output:

```text
Hello Linux Administrator
Welcome to Shell Scripting
```

Run:

```bash
./userinfo.sh
```

Expected Output:

```text
User Name: Student1
```

Run:

```bash
./input.sh
```

Example Output:

```text
Enter your name:
Akshay

Welcome Akshay
```

## Real-world Usage

Shell scripts are used for:

- User management
- Backup automation
- Service monitoring
- Log analysis
- System health checks

Example:

```bash
#!/bin/bash

df -h
```

Used to generate disk usage reports.

## Key Learnings

- Shell scripts automate Linux tasks.
- Shebang specifies the shell interpreter.
- chmod +x makes scripts executable.
- Variables store values.
- read accepts user input.
- Scripts reduce repetitive manual work.

## Screenshots

Add screenshots for:

1. Creating hello.sh
2. chmod +x hello.sh
3. Running hello.sh
4. Creating userinfo.sh
5. Running userinfo.sh
6. Creating input.sh
7. Running input.sh
8. User input example
