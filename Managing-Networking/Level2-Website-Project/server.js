# Files Created and Used

## server.js

Created to run the Node.js application.

Purpose:
- Create Express server
- Configure routes
- Serve HTML pages
- Serve static files from template folder

File:

```javascript
const express = require('express');
const path = require('path');

const app = express();

app.use(express.static('template'));

app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'template', 'index.html'));
});

app.get('/services', (req, res) => {
    res.sendFile(path.join(__dirname, 'views', 'services.html'));
});

app.get('/projects', (req, res) => {
    res.sendFile(path.join(__dirname, 'views', 'projects.html'));
});

app.get('/contact', (req, res) => {
    res.sendFile(path.join(__dirname, 'views', 'contact.html'));
});

app.listen(3000, () => {
    console.log('Server running on port 3000');
});
```

---

## package.json

Created using:

```bash
npm init -y
```

Purpose:
- Store project information
- Store Express dependency

---

## index.html

Location:

```text
template/index.html
```

Purpose:
- Home page
- Navigation menu
- Company introduction

Modified:
- Changed company name to PDD Technologies
- Updated navigation links
- Updated background image

---

## services.html

Location:

```text
views/services.html
```

Purpose:
- Display company services

Added:
- Linux Administration
- Docker Management
- PostgreSQL Administration
- NFS Storage

---

## projects.html

Location:

```text
views/projects.html
```

Purpose:
- Display completed projects

Added:
- Nginx Deployment
- PostgreSQL Docker Compose
- NFS Storage
- SSL Configuration

---

## contact.html

Location:

```text
views/contact.html
```

Purpose:
- Display contact information

Added:
- Email
- Phone Number
- Location

---

## Image Files Used

```text
template/assets/img/header-bg.jpg
template/assets/img/services-bg.jpg
template/assets/img/projects-bg.jpg
template/assets/img/contact-bg.jpg
```

Purpose:
- Background images for website pages
