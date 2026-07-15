# Task 01 - Create a Linux User

## Objective

Create a Linux user named student and assign a password.

## Commands Used

sudo useradd -m student
id student
ls -ld /home/student
sudo passwd student
su - student
whoami

## Verification

id student
ls -ld /home/student
whoami

## Real-world Usage

Used by Linux administrators to provide access to developers and application users.

## Key Learnings

- Linux is a multi-user operating system.
- Users have UIDs and home directories.
- Passwords are managed with passwd.
