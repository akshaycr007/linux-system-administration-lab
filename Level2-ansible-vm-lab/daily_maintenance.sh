#!/bin/bash
# Delete files larger than 500MB under /app/appuser/data
find /app/appuser/data -type f -size +500M -exec rm -f {} +

# Backup /var/log to /backup with date timestamp
TIMESTAMP=$(date +%Y-%m-%d_%H%M%S)
tar -czf /backup/var_log_backup_${TIMESTAMP}.tar.gz /var/log 2>/dev/null



Line-by-Line Explanation & Definitions
1. Shebang (Interpreter Directive)
Bash
#!/bin/bash
#! (Shebang): Tells the Linux kernel which interpreter to use when executing this file.

/bin/bash: Specifies that this script must be run using the standard Bash shell environment.

2. Disk Space Cleanup Command
Bash
find /app/appuser/data -type f -size +500M -exec rm -f {} +
find: The standard Linux utility for searching files and directories based on custom conditions.

/app/appuser/data: The target directory path to search inside (where your app user data lives).

-type f: Restricts the search strictly to regular files (ignores sub-directories, symlinks, sockets, etc.).

-size +500M: Filters for files whose size is strictly greater than 500 Megabytes.

-exec rm -f {} +:

rm -f: The force remove command. Deletes files without asking for user confirmation or raising errors if a file doesn't exist.

{} +: Collects matching files and passes them in batches to rm at once. This is much faster and uses less CPU than running rm individually for every single file.

3. Dynamic Timestamp Variable
Bash
TIMESTAMP=$(date +%Y-%m-%d_%H%M%S)
TIMESTAMP=: Declares a local Bash variable named TIMESTAMP.

$(...): Command substitution. It executes the inner command and assigns its printed output to the variable.

date +%Y-%m-%d_%H%M%S: Formats the system's current date and time:

%Y: 4-digit year (e.g., 2026).

%m: 2-digit month (e.g., 07).

%d: 2-digit day (e.g., 23).

%H: 2-digit hour in 24-hour format (e.g., 02).

%M: 2-digit minute (e.g., 00).

%S: 2-digit second (e.g., 00).

Result Example: 2026-07-23_020000.

4. Tarball Log Compression & Backup
Bash
tar -czf /backup/var_log_backup_${TIMESTAMP}.tar.gz /var/log 2>/dev/null
tar: The tape archive utility used in Linux to bundle multiple files into a single archive file.

Flags (-czf):

-c (Create): Constructs a new archive file.

-z (gzip): Compresses the archive using gzip compression to minimize storage footprint.

-f (file): Specifies the destination filename for the created archive.

/backup/var_log_backup_${TIMESTAMP}.tar.gz: Sets the destination path in /backup using the formatted timestamp string (e.g., /backup/var_log_backup_2026-07-23_020000.tar.gz).

/var/log: The target source directory being backed up.

2>/dev/null: Suppresses non-fatal warnings (like active log files being written to during compression) by sending standard error (stderr) stream 2 to the null device (/dev/null).
