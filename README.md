# Pinaceae · Retro CRT Scanner 🟢

> 一个用 AI Vibe Coding 做的 EVA 风格 10×10 磷光扫描仪 —— 纯 HTML/CSS/JS，零依赖，单文件就能跑。

**🖥️ Live Demo:** **https://plasticpinaceae.github.io/Pinaceae/**

![preview](https://img.shields.io/badge/status-online-brightgreen) ![deps](https://img.shields.io/badge/dependencies-0-blue) ![license](https://img.shields.io/badge/license-MIT-orange)

---

## 🌿 这是什么

一个仿照 **新世纪福音战士 (EVA / NERV)** 风格设计的复古 CRT 显示器界面。

- 真实的 **磷光绿 CRT 扫描线** 和噪点效果
- **10×10 探测点阵** 动画
- 整个 "设备外壳"（金属边框、铆钉、电源指示灯）全部用 **CSS 画出来**，没用任何图片
- **单 HTML 文件**，双击就能打开看效果

## 🚀 怎么跑起来

### 方式 1：直接在线看（最快）
点这个链接 → **https://plasticpinaceae.github.io/Pinaceae/**

### 方式 2：本地双击
1. 把这个仓库下载下来（点页面右上角绿色 `Code` 按钮 → `Download ZIP`）
2. 解压
3. 双击 `index.html`，浏览器自动打开 ✓

### 方式 3：本地起一个静态服务器（开发用）
```bash
cd Pinaceae
python -m http.server 8000
# 然后浏览器打开 http://localhost:8000
```

## 📁 项目结构

```
Pinaceae/
├── index.html              ← 主程序，所有逻辑都在这一个文件里
├── MicrogrammaD-Bold.otf   ← UI 用的字体
├── MicrogrammaD-Medium.otf ← UI 用的字体
├── README.md               ← 你现在看的这个
├── AI_CONTEXT.md           ← 给 AI 协作时读的上下文（重要！）
└── LICENSE                 ← MIT 开源协议
```

## 🤖 给未来 AI 协作者的话

如果你（或你正在用的 AI）想继续开发这个项目，**请先读 [`AI_CONTEXT.md`](./AI_CONTEXT.md)**，
里面写了项目背景、设计意图、技术栈、已知问题，能让 AI 立刻进入状态。

## 🎨 灵感来源

- 新世纪福音战士 (Neon Genesis Evangelion) NERV 总部监控屏
- 老式 CRT 磷光显示器（P1 phosphor，#9eff8a 色系）
- 80 年代军工/科研设备外壳设计

## 📜 License

[MIT](./LICENSE) — 随便用，注明出处即可。

---

> 这是一个 **Vibe Coding** 项目，由 [@plasticpinaceae](https://github.com/plasticpinaceae) 与 AI 协作完成。
