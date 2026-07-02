# AI_CONTEXT.md

> 这是一份**写给 AI 看的上下文文件**。
> 当作者（@plasticpinaceae）把这个仓库交给你时，请先完整读完本文件再动手。

---

## 1. 项目身份（不要再搞错了）

| 字段 | 值 |
| --- | --- |
| **正式名** | **S.S.T.G.** — Simple Seamless Texture Generator |
| **中文名** | 简易无缝纹理生成器 |
| **当前版本** | V1.1（见 `index.html` `<title>` 与页面顶栏） |
| **GitHub 仓库名** | `Pinaceae`（历史遗留，作者账号主题，不改动以保 Pages URL） |
| **GitHub 用户** | [@plasticpinaceae](https://github.com/plasticpinaceae) |
| **Live URL** | <https://plasticpinaceae.github.io/Pinaceae/> |
| **类型** | 纯前端 web 工具 / vibe coding 作品 |

> ⚠️ 早期文档里出现过的 "Retro CRT Scanner / Pinaceae · 磷光扫描仪" 是**上一版被替换掉的项目**，请忽略，不要在改动中恢复那些概念。

## 2. 一句话说明

在浏览器里生成 4 方连续（seamless）纹理，带 **2×2 平铺预览** 和 **PNG 导出**，纯原生 HTML/CSS/JS，单文件，零依赖。

## 3. 技术栈

| 项 | 内容 |
| --- | --- |
| 语言 | HTML + CSS + 原生 JavaScript |
| 框架 | 无（vanilla） |
| 构建工具 | 无（不需要 npm install） |
| 依赖 | **0** |
| 字体 | `fonts/MicrogrammaD-Bold.otf` / `fonts/MicrogrammaD-Medium.otf`（本地 `.otf`） |
| 渲染 | `<canvas>` + `canvas.toDataURL('image/png')` 导出 |
| 运行 | 静态服务器（推荐 `python -m http.server`）或直接双击 `index.html`\* |

\* 双击 `file://` 打开时，浏览器可能不加载本地 `.otf`，UI 会回退到 Inter/系统字体，其他功能正常。

## 4. 目录结构（当前）

```
sstg/repo/
├── index.html                       ← 唯一源码文件，HTML/CSS/JS 全内联
├── fonts/
│   ├── MicrogrammaD-Bold.otf
│   └── MicrogrammaD-Medium.otf
├── .ai/
│   └── PROJECT.md                   ← AI 入口摘要
├── AI_CONTEXT.md                    ← 你正在看的这份
├── README.md                        ← 给人看的说明
├── LICENSE                          ← MIT
├── .gitignore
└── dev.ps1                          ← 本地开发脚本（Windows PowerShell）
```

**修改任何视觉/交互逻辑，只需要动 `index.html`。** 字体只在 `@font-face` 里被引用（第 8–9 行）。

## 5. 设计意图与美学约定（改风格前必读）

- **配色（CSS 变量，定义在 `index.html` `:root`）**：
  - `--bg:#0d0d0d` / `--bg2:#111111` / `--bg3:#1c1c1c` / `--bg4:#242424`
  - `--brd:#2a2a2a` / `--brd2:#333`
  - 文字：`--t1:#ffffff` / `--t2:#888888` / `--t3:#555555`
  - **主强调色**：`--acc:#c8a84e`（金色），配 `--acc-d/--acc-g` 半透明变体
- **标题字体**：Microgramma（本地 .otf），回退 `Inter, sans-serif`
- **正文字体**：`Inter, 'Segoe UI', system-ui, sans-serif`
- **数值/代码字体**：Consolas monospace
- **UI 质感**：紧凑、深色、类似 DAW/3D 软件面板；间距很紧（12px 面板 padding、6px 控件间距）
- **交互**：所有滑杆、色板、preset 按钮实时联动预览

## 6. 用户画像与协作方式

- **作者是设计/创作背景**，不是程序员；熟悉工具但不熟命令行
- 偏好 **vibe coding**：自然语言描述需求 → AI 直接产出可运行完整代码
- 交付偏好：
  - **给完整文件**，不要给 patch/diff
  - 命令行操作时给**可整段复制粘贴**的命令
  - 少堆术语，多类比

## 7. 已知问题 / TODO

- ⚠️ **字体版权风险**：`MicrogrammaD` 是 URW 商业字体。当前直接放在公开仓库里严格说有风险。可选替代（都是开源 OFL）：
  - [Major Mono Display](https://fonts.google.com/specimen/Major+Mono+Display)
  - [Orbitron](https://fonts.google.com/specimen/Orbitron)
  - [Share Tech Mono](https://fonts.google.com/specimen/Share+Tech+Mono)
- 📱 **移动端未适配**：桌面固定布局，侧栏 300px 硬编码
- 🎨 **主题化未做**：目前只有金色 (`#c8a84e`) 一套，未来可加暖色/冷色变体
- 🔌 **参数未抽出**：canvas 尺寸、预览倍率等仍写死
- 📤 **导出格式单一**：只有 PNG，未来可加 JPG/WebP、可选尺寸

## 8. 部署

- 托管：GitHub Pages（自动）
- 触发分支：`main`（根目录）
- URL：<https://plasticpinaceae.github.io/Pinaceae/>
- push 后约 1–2 分钟生效

## 9. AI 协作准则

1. ✅ 保留第 5 节所有视觉约定，除非作者明确要改
2. ✅ 修改后**给出完整的 `index.html`**，不要让作者手动拼接
3. ✅ 引入任何 CDN / 第三方库前先解释理由（作者偏好零依赖）
4. ✅ commit message 用中文 + 简短说明，例：`feat: 增加暖色主题` / `fix: 字体路径`
5. ❌ 不要主动拆分 inline CSS/JS，除非作者要求
6. ❌ 不要建议引入 webpack / vite / npm，保持"双击就能跑"的特性
7. ❌ 不要在文档里恢复"Retro CRT Scanner / Pinaceae 扫描仪"这个旧概念

## 10. 本地开发路径（作者机器）

- 开发根：`D:\dev\sstg\`
  - `repo/`         → Git 工作副本（远程 `origin` = GitHub `plasticpinaceae/Pinaceae`）
  - `docs/`         → 开发笔记、参考图（不进仓库）
  - `assets-backup/`→ 原始字体等资源备份（不进仓库）

---

**最后更新**：2026-07-02
**文件版本**：2.0（对齐 S.S.T.G. 真实项目身份，废弃旧 CRT Scanner 描述）
