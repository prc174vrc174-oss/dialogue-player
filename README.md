# 🎙️ 多國語言雙角色語音播放器 (Multilingual AI Dialogue & Shadowing Player)

> 🚀 **純前端・零後端・安全開源**：專為語言學習者與口語跟讀（Shadowing）設計的高音質真人發音網頁播放器。搭載 Google Gemini AI 最新語音合成技術與多國語言即時辭典。
>
> 🌐 **線上體驗網址 (Live Demo)**：[https://prc174vrc174-oss.github.io/dialogue-player/](https://prc174vrc174-oss.github.io/dialogue-player/)

---

## 🌟 核心特色

- 🌍 **支援 6 種外語學習**：
  - 🇺🇸 **英語 (English)**
  - 🇯🇵 **日語 (Japanese)**
  - 🇰🇷 **韓語 (Korean)**
  - 🇵🇭 **菲律賓語 (Tagalog / Filipino)**
  - 🇻🇳 **越南語 (Vietnamese)**
  - 🇹🇭 **泰語 (Thai)**
- 👥 **雙人對話 / 👤 單人朗讀 雙模式**：
  - **雙人對話**：自動區分 Speaker A 與 Speaker B，支援真人輪流對話與交替播放。
  - **單人朗讀**：全篇短文統一由單一朗讀者演繹，流暢自然。
- 👫 **雙角色男女音色自由選配**：
  - 角色 A 與 角色 B 皆可自由選擇 **4 種女聲音色**（`Aoede`、`Kore`、`Leda`、`Zephyr`）或 **4 種男聲音色**（`Puck`、`Charon`、`Fenrir`、`Orus`）。
  - 支援「女+男」、「女+女」、「男+男」、「男+女」任意性別組合。
- 🔄 **雙向智慧輸入**：
  - **輸入繁體中文** ➡️ 點擊「中文轉外語 (AI)」，自動產生道地口語句子與發音。
  - **輸入外語對話** ➡️ 點擊「AI 翻譯中文」，自動產生對照中文字幕。
- 🎧 **跟讀練耳（Shadowing）專用控制**：
  - 支援 **0.75x 慢速**、**0.85x 稍慢**、**1.0x 原速** 微調。
  - 支援單句重複 1 次、2 次、3 次或 **無限循環跟讀**。
  - 提供「逐句自動推進播放（含跟讀停頓）」與「整篇流暢連續朗讀」雙模式。
- 📖 **單字即時發音辭典**：
  - 點擊對話中任何單字或詞彙，即時彈出精準繁體中文釋義、詞性標籤與例句。
- 🔒 **100% 隱私與安全保證**：
  - 純靜態網頁架構，無後端伺服器收集資料。
  - 您的 Google Gemini API Key 僅安全儲存在您個人瀏覽器的 `localStorage` 中，直接與 Google 官方 API 通訊。
  - 未填寫 API Key 時自動降級為瀏覽器本機語音與離線辭典，隨開即用！

---

## 🚀 如何架設在 GitHub Pages（免費託管教學）

本專案為標準靜態網頁，支援直接透過 GitHub Pages 免費託管，電腦、平板、iPhone、Android 手機皆可隨時打開練習！

### 方法一：GitHub 網頁端極速建立（最推薦・免指令・30 秒完成）

1. **登入 GitHub 並建立新倉庫**：
   - 開啟 [GitHub.com](https://github.com) 登入帳號。
   - 點擊右上角「**+**」按鈕，選擇「**New repository**」。
   - 輸入倉庫名稱（例如：`dialogue-player`），將其設為 **Public**（公開），點擊「**Create repository**」。

2. **上傳網頁檔案**：
   - 在新建立的倉庫頁面中，點擊「**uploading an existing file**」。
   - 將本資料夾中的 `index.html` 與 `.nojekyll`（以及 `README.md`）拖曳至網頁中。
   - 點擊下方綠色按鈕「**Commit changes**」。

3. **啟用 GitHub Pages**：
   - 進入該倉庫上方的「**Settings**」（設定）分頁。
   - 在左側選單點擊「**Pages**」。
   - 在 **Build and deployment** 下方的 **Branch** 選擇 `main`（或 `master`），資料夾保持 `/ (root)`，點擊「**Save**」。

4. **完成啟用**：
   - 稍等約 1 分鐘重新整理頁面，頂部即會顯示您的專屬網址：
     ```
     https://<你的GitHub帳號>.github.io/dialogue-player/
     ```
   - 點擊該連結即可開始使用！

---

### 方法二：使用 Git 指令推送

若您的電腦已安裝 Git，可在終端機執行下列指令：

```bash
# 1. 進入專案資料夾
cd dialogue-player-web

# 2. 初始化並提交
git init
git add .
git commit -m "feat: 初次發布多國語言雙角色語音播放器網頁版"

# 3. 建立 main 分支並關聯遠端倉庫（請替換為您的倉庫網址）
git branch -M main
git remote add origin https://github.com/<你的GitHub帳號>/dialogue-player.git

# 4. 推送至 GitHub
git push -u origin main
```

推送完成後，同樣至倉庫的 **Settings** -> **Pages**，將 Source 設為 `Deploy from a branch` 並選擇 `main` 分支即可！

---

## 🔑 免費取得 Google Gemini API Key

本播放器採用 Google Gemini 官方最新語音合成模型（`gemini-3.8-flash-lite-tts`），可免費領取 API Key 啟用高音質真人音色：

1. 前往 [Google AI Studio](https://aistudio.google.com/apikey)。
2. 使用 Google 帳號登入後，點擊「**Create API key**」。
3. 複製產生的金鑰。
4. 打開網頁播放器，點擊右上角「⚙️ **設定**」，將金鑰貼入「**Gemini API Key**」欄位並點選「**儲存**」。
5. 設定成功後，狀態將顯示「✅ **已啟用 Gemini AI 真人音**」，即可享受自然真人對話與 AI 智慧翻譯辭典！

---

## 🛠️ 技術架構

- **前端框架**：純原生 JavaScript (Vanilla JS ES6+)
- **樣式設計**：[Tailwind CSS (CDN)](https://tailwindcss.com/)
- **圖示庫**：[FontAwesome 6.4](https://fontawesome.com/)
- **音訊架構**：Web Audio API、HTML5 Audio、Base64 PCM/WAV 封裝處理
- **AI 引擎**：
  - Google Gemini 3.8 Flash Lite TTS (`gemini-3.8-flash-lite-tts`)
  - Google Gemini 2.5 Flash (智慧對話翻譯與 JSON 辭典)
- **備援架構**：Web SpeechSynthesis API (瀏覽器原生發音人) & MyMemory API (離線免 Key 翻譯)

---

## 📄 授權協議 (License)

本專案採 [MIT License](LICENSE) 開源授權，歡迎自由修改、學習與個人分享使用！
