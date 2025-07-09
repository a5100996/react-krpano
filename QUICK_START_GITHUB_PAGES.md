# 🚀 GitHub Pages 快速部署指南

## 📋 前置需求
- GitHub 帳號
- 已將程式碼推送到 GitHub 儲存庫

## ⚡ 快速設定（3 步驟）

### 1️⃣ 啟用 GitHub Pages
1. 前往 GitHub 儲存庫 → **Settings** → **Pages**
2. 在 **Source** 選擇 **GitHub Actions**

### 2️⃣ 推送程式碼
```bash
git add .
git commit -m "新增 GitHub Pages 設定"
git push origin main
```

### 3️⃣ 等待部署完成
- 前往 **Actions** 標籤查看部署進度
- 部署完成後，網站將可在此網址訪問：
  ```
  https://a5100996.github.io/react-krpano/
  ```

## 🔧 本地開發

### 方法一：使用 PowerShell 腳本（推薦）
```powershell
.\dev-docs.ps1
```

### 方法二：使用 npm 腳本
```bash
npm install -g docsify-cli
npm run docs:serve
```

### 方法三：手動啟動
```bash
docsify serve docs
```

## 📂 重要檔案說明

| 檔案/資料夾 | 用途 |
|------------|------|
| `.github/workflows/deploy-docs.yml` | GitHub Actions 自動部署設定 |
| `docs/` | 文件網站檔案 |
| `docs/.nojekyll` | 告訴 GitHub Pages 不要使用 Jekyll |
| `docs/index.html` | Docsify 主設定檔 |

## 🎯 下一步

1. **自訂內容**：編輯 `docs/` 資料夾中的 Markdown 檔案
2. **修改主題**：在 `docs/index.html` 中調整 Docsify 設定
3. **新增頁面**：在對應語言資料夾中建立新的 `.md` 檔案
4. **自訂網域**：在 `docs/` 中建立 `CNAME` 檔案（選擇性）

## ❓ 需要協助？

檢視詳細設定指南：[GITHUB_PAGES_SETUP.md](./GITHUB_PAGES_SETUP.md)
