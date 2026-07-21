# PDD Technologies Website

## Project Overview

This project is a multi-page company website developed using **Node.js** and **Express.js** on a Linux environment.

The website was customized from a Bootstrap template and redesigned to represent **PDD Technologies**.

The application serves multiple pages using Express routing and uses custom background images for each page.

---

# Project Objectives

The objectives of this project were:

- Learn Node.js fundamentals
- Learn Express.js routing
- Build a multi-page website
- Customize a Bootstrap template
- Serve static files (HTML, CSS, Images)
- Manage files using Linux commands
- Document the project using GitHub

---

# Technologies Used

| Technology | Purpose |
|------------|----------|
| Ubuntu Linux | Development Environment |
| Node.js | JavaScript Runtime |
| NPM | Package Manager |
| Express.js | Web Framework |
| HTML5 | Web Page Structure |
| CSS3 | Styling |
| Bootstrap Template | Website Design |
| GitHub | Version Control & Documentation |

---

# Linux Commands Used

## Navigation

```bash
pwd
ls
cd
```

## File Operations

```bash
mkdir
touch
cp
mv
rm
```

## File Editing

```bash
nano
cat
grep
```

## Process Management

```bash
ps -ef
pkill node
```

## Network Testing

```bash
curl http://localhost:3000
```

---

# Project Structure

```text
pdd-website/
│
├── server.js
├── package.json
├── package-lock.json
├── node_modules/
│
├── views/
│   ├── services.html
│   ├── projects.html
│   ├── contact.html
│
├── template/
│   ├── index.html
│   └── assets/
│       └── img/
│           ├── header-bg.jpg
│           ├── services-bg.jpg
│           ├── projects-bg.jpg
│           └── contact-bg.jpg
```

---

# Files Created

## 1. server.js

Main application file.

Responsibilities:

- Starts Express server
- Handles routing
- Serves website pages
- Maps URLs to HTML files

Example Routes:

```javascript
app.get('/', ...)
app.get('/services', ...)
app.get('/projects', ...)
app.get('/contact', ...)
```

---

## 2. package.json

Created using:

```bash
npm init -y
```

Purpose:

- Stores project information
- Stores dependencies
- Stores version information

---

## 3. package-lock.json

Generated automatically by npm.

Purpose:

- Maintains exact package versions
- Ensures consistent installations

---

## 4. index.html

Location:

```text
template/index.html
```

Purpose:

- Home page
- Company introduction
- Navigation menu

Modifications Performed:

- Changed branding to PDD Technologies
- Updated navigation links
- Updated background image
- Removed unnecessary template content

---

## 5. services.html

Location:

```text
views/services.html
```

Purpose:

Displays company services.

Services Listed:

- Linux Administration
- Docker Management
- PostgreSQL Administration
- NFS Storage Configuration
- Reverse Proxy Setup

Background Image:

```text
services-bg.jpg
```

---

## 6. projects.html

Location:

```text
views/projects.html
```

Purpose:

Displays completed projects.

Projects Included:

- Nginx Deployment
- PostgreSQL Docker Compose
- NFS Storage Setup
- SSL Configuration
- Backup Automation

Background Image:

```text
projects-bg.jpg
```

---

## 7. contact.html

Location:

```text
views/contact.html
```

Purpose:

Displays company contact information.

Background Image:

```text
contact-bg.jpg
```

---

# Images Used

## Homepage

```text
header-bg.jpg
```

Used for:

- Home Page Banner

---

## Services Page

```text
services-bg.jpg
```

Used for:

- Services Page Background

---

## Projects Page

```text
projects-bg.jpg
```

Used for:

- Projects Page Background

---

## Contact Page

```text
contact-bg.jpg
```

Used for:

- Contact Page Background

---

# Node.js Setup

## Verify Node.js

```bash
node -v
```

## Verify NPM

```bash
npm -v
```

---

# Project Initialization

Create project directory:

```bash
mkdir pdd-website
cd pdd-website
```

Initialize project:

```bash
npm init -y
```

Install Express:

```bash
npm install express
```

---

# Express.js Configuration

## Import Modules

```javascript
const express = require('express');
const path = require('path');
```

Purpose:

### express

Used for:

- Routing
- HTTP request handling
- Serving web pages

### path

Used for:

- Managing file paths safely

---

# Static File Serving

```javascript
app.use(express.static('template'));
```

Purpose:

Allows browser access to:

```text
/assets/img/
```

Without this line:

- Images will not load
- CSS files will not load

---

# Express Routing

## Home Page

```javascript
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'template', 'index.html'));
});
```

Purpose:

Loads homepage.

---

## Services Page

```javascript
app.get('/services', (req, res) => {
    res.sendFile(path.join(__dirname, 'views', 'services.html'));
});
```

Purpose:

Loads services page.

---

## Projects Page

```javascript
app.get('/projects', (req, res) => {
    res.sendFile(path.join(__dirname, 'views', 'projects.html'));
});
```

Purpose:

Loads projects page.

---

## Contact Page

```javascript
app.get('/contact', (req, res) => {
    res.sendFile(path.join(__dirname, 'views', 'contact.html'));
});
```

Purpose:

Loads contact page.

---

# Website Pages

| Page | URL |
|--------|--------|
| Home | / |
| Services | /services |
| Projects | /projects |
| Contact | /contact |

---

# Running the Application

Start server:

```bash
node server.js
```

Output:

```text
Server running on port 3000
```

---

# Verification

Check service using curl:

```bash
curl http://localhost:3000
```

Check running process:

```bash
ps -ef | grep node
```

Check listening port:

```bash
ss -tlnp | grep 3000
```

---

# Browser Access

Local Machine:

```text
http://localhost:3000
```

Network Access:

```text
http://<server-ip>:3000
```

Example:

```text
http://192.168.50.122:3000
```

---

# Issues Encountered and Solutions

## Issue 1

Error:

```text
Cannot find module 'express'
```

Solution:

```bash
npm install express
```

---

## Issue 2

Error:

```text
curl: Failed to connect to localhost:3000
```

Cause:

Node server not running.

Solution:

```bash
node server.js
```

---

## Issue 3

Background images not loading.

Cause:

Images uploaded with double extensions:

```text
services-bg.jpg.jpg
projects-bg.jpg.jpg
contact-bg.jpg.jpg
```

Solution:

```bash
mv services-bg.jpg.jpg services-bg.jpg
mv projects-bg.jpg.jpg projects-bg.jpg
mv contact-bg.jpg.jpg contact-bg.jpg
```

---

## Issue 4

Website opening but pages not changing.

Cause:

Navbar links were using:

```html
href="#services"
```

instead of:

```html
href="/services"
```

Solution:

Updated navigation to use Express routes.

---

# Skills Learned

Through this project I learned:

- Linux File Management
- Linux Process Management
- Node.js Fundamentals
- NPM Package Management
- Express.js Routing
- Static File Serving
- Bootstrap Customization
- Multi-Page Website Development
- Background Image Management
- GitHub Documentation
- Basic Web Application Deployment

---

# Future Improvements

- Add responsive contact form
- Connect PostgreSQL database
- Add authentication
- Deploy using Nginx reverse proxy
- Enable HTTPS using SSL certificate

---

# Author

**Akshay C**

Linux System Administration Internship Project

PDD Technologies Website Development
