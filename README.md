# UC Component Library - Assignment 13

## Overview
This is a React project with pre-commit checks, GitHub Actions and Docker

## How to Run the Project
### 1. Install Dependencies
```sh
npm install
```

### 2. Start the Project Locally
```sh
npm start
```
Then open [http://localhost:3000](http://localhost:3000).

### Pre-Commit Checks (Husky)
Before committing, the following checks run:
- ESLint (checks for errors)
- Prettier (formats code)
- Jest (runs tests)

## How to Commit Code
```sh
git add .
git commit -m "Your message"
```
Fix any errors before committing.

## GitHub Actions (CI/CD)
Every push and pull request runs:
1. ESLint (linting)
2. Prettier (formatting)
3. Jest (tests)

Check the status under the **GitHub Actions** tab.

## Run with Docker
### 1. Build the Docker Image
```sh
docker build -t cordonez_ui_garden_build_checks .
```

### 2. Run the Container
```sh
docker run -p 8018:80 --name cordonez_coding_assignment13 cordonez_ui_garden_build_checks
```

### 3. Open in Browser
Go to [http://127.0.0.1:8018](http://127.0.0.1:8018).

### 4. Stop the Container
```sh
docker stop cordonez_coding_assignment13
docker rm cordonez_coding_assignment13
```

## Final Checklist
- Project runs locally
- Pre-commit checks work
- GitHub Actions runs
- Docker container runs
- README is complete