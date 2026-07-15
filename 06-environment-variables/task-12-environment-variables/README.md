# Task 12 - Environment Variables

## Objective

Learn how to view, create, and use environment variables in Linux.

## Commands Used

```bash
echo $USER

echo $HOME

echo $PATH

env

export COMPANY="OpenAI"

echo $COMPANY

export PROJECT="LinuxAdminLab"

echo $PROJECT

echo "$USER is working on $PROJECT"

env | grep PROJECT
```

## Command Explanation

### echo

Displays text or variable values.

Example:

```bash
echo $HOME
```

### env

Displays all environment variables.

Example:

```bash
env
```

### export

Creates an environment variable.

Example:

```bash
export PROJECT="LinuxAdminLab"
```

### grep

Searches text within output.

Example:

```bash
env | grep PROJECT
```

## Common Environment Variables

### USER

Stores the current username.

Example:

```bash
echo $USER
```

### HOME

Stores the user's home directory.

Example:

```bash
echo $HOME
```

### PATH

Stores directories where Linux searches for commands.

Example:

```bash
echo $PATH
```

## Procedure

1. Display USER variable.
2. Display HOME variable.
3. Display PATH variable.
4. List all environment variables.
5. Create a custom variable named COMPANY.
6. Create a custom variable named PROJECT.
7. Display variable values.
8. Search for PROJECT using grep.

## Verification

Check USER:

```bash
echo $USER
```

Expected Output:

```text
student1
```

Check HOME:

```bash
echo $HOME
```

Expected Output:

```text
/home/student1
```

Check custom variable:

```bash
echo $PROJECT
```

Expected Output:

```text
LinuxAdminLab
```

## Real-world Usage

Environment variables are used for:

- Application configuration
- Database connection settings
- Docker containers
- Shell scripts
- CI/CD pipelines

Examples:

```bash
export DB_HOST=localhost

export APP_PORT=8080

export ENVIRONMENT=production
```

## Key Learnings

- Environment variables store configuration values.
- USER stores the current username.
- HOME stores the user's home directory.
- PATH tells Linux where to find commands.
- export creates environment variables.
- Variables created with export are temporary.

