# Level 2 - Task 1: System Update and Upgrade

## Objective

Update package repositories, upgrade installed packages, and remove unnecessary packages.

## Commands Used

```bash
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y
```

## Command Explanation

### apt update

Downloads the latest package information from Ubuntu repositories.

### apt upgrade -y

Installs available package updates.

### apt autoremove -y

Removes unused packages and dependencies.

## Verification

```bash
lsb_release -a
```

or

```bash
cat /etc/os-release
```

## Real World Usage

System administrators regularly update servers to:

- Apply security patches
- Fix bugs
- Improve stability
- Prepare systems for application deployment

## Result

Successfully updated package repositories, upgraded installed packages, and removed unused packages.

## Screenshots

1. apt-update.png
2. apt-upgrade.png
3. apt-autoremove.png
4. os-information.png
