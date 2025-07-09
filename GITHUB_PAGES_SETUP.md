# GitHub Pages 設定指南

這個專案已經設定好可以在 GitHub Pages 上執行。以下是設定步驟：

## 自動部署設定

專案已經包含 GitHub Actions 工作流程，會自動將文件部署到 GitHub Pages。

### 啟用 GitHub Pages

1. 前往你的 GitHub 儲存庫頁面
2. 點擊 **Settings** 標籤
3. 在左側導航列中找到 **Pages**
4. 在 **Source** 部分，選擇 **GitHub Actions**

### 觸發部署

- 當你推送程式碼到 `main` 或 `master` 分支時，會自動觸發部署
- 部署完成後，你的文件網站將可在以下網址訪問：
  ```
  https://[你的使用者名稱].github.io/[儲存庫名稱]/
  ```

## 本地開發

如果你想在本地預覽文件：

1. 安裝 docsify-cli：
   ```bash
   npm install -g docsify-cli
   ```

2. 在專案根目錄執行：
   ```bash
   docsify serve docs
   ```

3. 在瀏覽器中開啟 http://localhost:3000

## 專案結構

```
docs/
├── .nojekyll          # 告訴 GitHub Pages 不要處理 Jekyll
├── index.html         # Docsify 主要配置檔案
├── _navbar.md         # 導航列配置
├── en-us/             # 英文文件
│   ├── _sidebar.md
│   └── components.md
└── zh-cn/             # 中文文件
    ├── _sidebar.md
    └── components.md
```

## 故障排除

如果部署失敗，請檢查：

1. **權限設定**：確保儲存庫設定中的 Actions 權限允許寫入
2. **分支名稱**：確認你的主分支名稱是 `main` 或 `master`
3. **GitHub Actions 日誌**：查看 Actions 標籤頁中的錯誤訊息

## 自訂網域（選擇性）

如果你想使用自訂網域：

1. 在 `docs` 資料夾中建立 `CNAME` 檔案
2. 在檔案中寫入你的網域名稱（例如：`docs.yourdomain.com`）
3. 在你的 DNS 提供商中設定 CNAME 記錄指向 `[你的使用者名稱].github.io`
