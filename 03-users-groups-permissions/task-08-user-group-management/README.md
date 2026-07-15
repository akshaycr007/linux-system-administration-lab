# Task 08 - User Group Management

## Objective

Learn how to create groups, add users to groups, and verify group memberships.

## Commands Used

```bash
sudo groupadd developers

sudo usermod -aG developers student1

groups student1

id student1
```

## Command Explanation

### groupadd

Creates a new group.

Example:

```bash
sudo groupadd developers
```

### usermod

Modifies user properties.

Example:

```bash
sudo usermod -aG developers student1
```

### Options Used

#### -a

Append the user to existing groups.

#### -G

Specify supplementary groups.

### groups

Displays group membership.

Example:

```bash
groups student1
```

### id

Displays user ID, primary group, and supplementary groups.

Example:

```bash
id student1
```

## Procedure

1. Create a group named developers.
2. Add student1 to the developers group.
3. Verify group membership using groups.
4. Verify user details using id.

## Verification

Check group membership:

```bash
groups student1
```

Expected Output:

```text
student1 : student1 sudo developers
```

Check user information:

```bash
id student1
```

Expected Output:

```text
uid=1001(student1)
gid=1001(student1)
groups=1001(student1),27(sudo),1002(developers)
```

## Real-world Usage

System administrators use groups to:

- Manage developer access
- Control shared directories
- Grant administrative privileges
- Simplify permission management

## Key Learnings

- groupadd creates groups.
- usermod modifies user memberships.
- -aG safely adds supplementary groups.
- groups displays memberships.
- id displays detailed user and group information.
