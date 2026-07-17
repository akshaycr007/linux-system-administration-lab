# Level2-08: Deploy PostgreSQL Using Docker Compose

## Objective

Deploy a PostgreSQL database using Docker Compose with persistent storage and automatic restart capability.

---

## Environment

- OS: Ubuntu 24.04 LTS
- Docker Compose
- PostgreSQL 16
- Container Name: postgres-db

---

## Create Project Directory

Create a dedicated directory for Docker Compose files.

```bash
mkdir ~/postgres
cd ~/postgres
```

Verify:

```bash
pwd
```

Expected:

```text
/home/akshay/postgres
```

---

## Create Docker Compose Configuration

Create the compose file:

```bash
nano docker-compose.yml
```

Configuration:

```yaml
services:
  postgres:
    image: postgres:16
    container_name: postgres-db
    restart: always

    environment:
      POSTGRES_USER: admin
      POSTGRES_PASSWORD: admin123
      POSTGRES_DB: appdb

    ports:
      - "5432:5432"

    volumes:
      - postgres_data:/var/lib/postgresql/data

volumes:
  postgres_data:
```

Save and exit:

```text
CTRL + O
ENTER
CTRL + X
```

---

## Deploy PostgreSQL Container

Start the container:

```bash
sudo docker compose up -d
```

Verify:

```bash
sudo docker ps
```

Example:

```text
CONTAINER ID   IMAGE         STATUS
fbb44d994f82   postgres:16   Up
```

---

## Verify PostgreSQL Logs

Check container logs:

```bash
sudo docker logs postgres-db
```

Expected:

```text
database system is ready to accept connections
```

---

## Verify Database Connectivity

Connect to PostgreSQL:

```bash
sudo docker exec -it postgres-db psql -U admin -d appdb
```

Run:

```sql
SELECT version();
```

Example output:

```text
PostgreSQL 16.x
```

Exit PostgreSQL:

```sql
\q
```

---

## Verify Persistent Volume

List Docker volumes:

```bash
sudo docker volume ls
```

Inspect volume:

```bash
sudo docker volume inspect postgres_postgres_data
```

---

## Verification Commands

```bash
sudo docker compose up -d
sudo docker ps
sudo docker logs postgres-db
sudo docker volume ls
sudo docker exec -it postgres-db psql -U admin -d appdb
```

---

## Screenshots

Store screenshots in:

```text
screenshots/
```

Required screenshots:

1. docker-compose-file.png
2. docker-compose-up.png
3. docker-ps-postgres.png
4. postgres-logs.png
5. postgres-login.png
6. postgres-version.png
7. docker-volume-list.png

---

## Result

Successfully deployed PostgreSQL 16 using Docker Compose. The database container was configured with persistent storage, automatic restart policy, and verified through direct database access.
