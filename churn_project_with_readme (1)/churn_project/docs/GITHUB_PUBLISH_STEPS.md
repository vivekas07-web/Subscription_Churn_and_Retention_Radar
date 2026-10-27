# Publish this project to GitHub

## 1. Prepare the folder
1. Extract `churn_project.zip`.
2. Open VS Code.
3. Choose **File → Open Folder…** and select the extracted `churn_project` folder.
4. Review `README.md`; do not add database passwords or private data.

## 2. Initialize Git
Open **Terminal → New Terminal** in VS Code and run:

```bash
git init
git add .
git status
git commit -m "Add churn and retention analytics project"
```

If Git asks for your identity, configure your Git username and email locally:
```bash
git config --global user.name "Your GitHub Name"
git config --global user.email "your-email@example.com"
```
Use the email you want associated with your commits. Do not share credentials.

## 3. Create a GitHub repository
1. Sign in to GitHub and create a new repository named `churn_project`.
2. Choose Public only if you are comfortable sharing the synthetic project source.
3. Do not initialize it with another README if your local folder already has one.
4. Copy the repository HTTPS URL.

## 4. Connect and push
Replace `<YOUR_REPOSITORY_URL>` with your own repository URL:
```bash
git branch -M main
git remote add origin <YOUR_REPOSITORY_URL>
git push -u origin main
```

## 5. Before submitting
- Add the real `.pbix` file only if it is suitable to share and does not contain secrets.
- Add dashboard screenshots to `screenshots/`.
- Add an exported PDF report to `reports/`.
- Update the README with verified findings and screenshots.
- Confirm the repository opens correctly in a private/incognito browser window if it is public.
