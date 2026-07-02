# S.S.T.G. · Simple Seamless Texture Generator

> 一个纯浏览器端的**无缝纹理生成器**（Simple Seamless Texture Generator）。零依赖，单 HTML 文件。

**Live Demo:** <https://plasticpinaceae.github.io/Pinaceae/>

![status](https://img.shields.io/badge/status-online-brightgreen) ![deps](https://img.shields.io/badge/dependencies-0-blue) ![license](https://img.shields.io/badge/license-MIT-orange)

---

## 这是什么

S.S.T.G. 是一个**在浏览器里直接生成 4 方连续（seamless）纹理**的工具：

- 内置多套 preset（几何图案、条纹、噪点等），可用侧栏参数实时调节
- 中央画布 + **2×2 平铺预览** 区，实时验证接缝是否真的无缝
- 一键导出 PNG（`canvas.toDataURL`）
- 深色 UI，配金色高亮 (`#c8a84e`)，Microgramma 标题字体

技术栈：**纯原生 HTML + CSS + JavaScript**，无框架，无构建工具，无 npm。

## 目录说明

```
sstg/repo/
├── index.html              ← 主程序（HTML/CSS/JS 全部内联）
├── fonts/
│   ├── MicrogrammaD-Bold.otf
│   └── MicrogrammaD-Medium.otf
├── .ai/
│   └── PROJECT.md          ← AI 协作入口，接手前先读这个
├── AI_CONTEXT.md           ← 项目背景与设计约定（详细版）
├── README.md               ← 你正在看的
├── LICENSE                 ← MIT
├── .gitignore
└── dev.ps1                 ← 一键本地起服务器（Windows）
```

> **仓库命名说明**：GitHub 仓库名是历史遗留的 `Pinaceae`（作者账号主题），但**项目正式名是 `S.S.T.G.`**。为了不破坏 GitHub Pages 的 URL，仓库名保持不变，所有代码与文档以 `S.S.T.G.` 为准。

## 本地开发

### 方式 1：双击 `index.html`
最快，但 `file://` 协议下浏览器**可能拒绝加载 .otf 字体**（会 fallback 到 Inter/系统字体）。如果你要看完整效果，请用方式 2。

### 方式 2：本地静态服务器（推荐）

Windows PowerShell：

```powershell
cd D:\dev\sstg\repo
./dev.ps1        # 会启动 python http.server 并打开浏览器
```

或手动：

```powershell
cd D:\dev\sstg\repo
python -m http.server 8000
# 浏览器打开 http://localhost:8000
```

## 部署

推送到 `main` 分支后，GitHub Pages 会在 1–2 分钟内自动更新：

```bash
git add .
git commit -m "feat: xxx"
git push
```

线上地址：<https://plasticpinaceae.github.io/Pinaceae/>

## 给 AI 协作者

如果你是 AI，接手这个项目前请**先读 [`.ai/PROJECT.md`](./.ai/PROJECT.md)**，
它是最新的项目入口；`AI_CONTEXT.md` 提供更详细的背景与设计约定。

## License

[MIT](./LICENSE) — 请注明出处。

---

> Vibe Coding 项目，作者 [@plasticpinaceae](https://github.com/plasticpinaceae)。
