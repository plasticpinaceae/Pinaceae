# AI_CONTEXT.md

> 这是一份**专门写给 AI 看的上下文文件**。
> 当用户（@plasticpinaceae）在新一轮对话里把这个仓库交给你时，请先完整读完本文件，再开始工作。

---

## 1. 项目身份

- **名字**：Pinaceae（仓库名）/ Retro CRT Scanner（产品名）
- **作者**：@plasticpinaceae（GitHub 用户名）
- **类型**：纯前端 web 玩具 / 视觉 demo
- **诞生方式**：Vibe Coding（用户用自然语言+ AI 协作生成）
- **公开 Demo**：https://plasticpinaceae.github.io/Pinaceae/

## 2. 一句话说清楚做了啥

一个 EVA / NERV 风格的复古 CRT 监视器界面，画面中央是 10×10 的磷光绿点阵扫描动画，外壳（金属边框、螺丝铆钉、电源灯）全部用 CSS 绘制，整个应用是**单个 HTML 文件**。

## 3. 技术栈（极简）

| 项 | 内容 |
| --- | --- |
| 语言 | HTML + CSS + 原生 JS |
| 框架 | **无**（vanilla） |
| 构建工具 | **无**（不需要 npm install） |
| 依赖 | **0** |
| 字体 | `MicrogrammaD-Bold.otf` / `MicrogrammaD-Medium.otf`（本地 .otf 文件） |
| 运行方式 | 双击 `index.html` 或任意静态服务器 |

## 4. 文件清单与职责

```
index.html                 ← 唯一的源代码文件，HTML/CSS/JS 全部内联在里面
MicrogrammaD-Bold.otf      ← UI 字体（注意：可能是商业字体，详见第 7 节风险）
MicrogrammaD-Medium.otf    ← UI 字体
README.md                  ← 给人看的项目说明
AI_CONTEXT.md              ← 你现在读的这份文件
LICENSE                    ← MIT 协议
.gitignore                 ← Git 忽略规则
```

> 修改任何视觉/交互逻辑，**只需要改 `index.html` 一个文件**。

## 5. 设计意图与美学约定（非常重要）

如果用户让你"加功能"或"改风格"，必须遵守这些约定，否则会破坏作品的统一感：

- **配色基调**：
  - 背景：近黑色 `#070707`
  - 主色（磷光绿）：`#9eff8a` 系
  - 设备外壳：金属灰渐变 `#3a3a36 → #2c2c28 → #1d1d1a`
- **直角美学**：所有元素**禁止用圆角**（`border-radius: 0`），保持军工/科研设备质感
- **字体**：等宽字体，已加载 Microgramma；若回退用 `'Courier New', Consolas, monospace`
- **没有图片**：设备外壳的所有视觉元素（铆钉、电源灯、边框反光）全部用 CSS 画
- **CRT 质感**：保留扫描线、轻微噪点、磷光余晖

## 6. 用户画像（与 AI 协作的方式）

- **作者是设计/创作背景**，**不是程序员**
- 偏好 **vibe coding** 工作流：自然语言描述需求 → AI 直接产出可运行的代码
- 不熟悉 git / 命令行的复杂操作，所以：
  - **改完代码请直接给完整文件**，不要给 patch / diff
  - 涉及命令行操作时，**给出可以直接复制粘贴的整段命令**
  - 解释技术名词时用类比，避免堆术语

## 7. 已知风险 / TODO

- ⚠️ **字体版权风险**：`MicrogrammaD` 是 URW 出品的商业字体。当前公开仓库直接放 `.otf` 文件**严格说是有风险的**。建议未来替换成开源等价字体：
  - [`Major Mono Display`](https://fonts.google.com/specimen/Major+Mono+Display)（Google Fonts，OFL 协议）
  - [`Orbitron`](https://fonts.google.com/specimen/Orbitron)
  - [`Share Tech Mono`](https://fonts.google.com/specimen/Share+Tech+Mono)
- 📱 **移动端未适配**：当前是桌面端固定尺寸布局
- 🎨 **未做主题化**：目前只有绿色 CRT，未来可加琥珀色 (`#ffb000`) / 蓝色 (`#7df9ff`) 变体
- 🔌 **未抽出参数**：扫描速度、点阵密度等都写死在 CSS / JS 里

## 8. 部署信息

- **托管**：GitHub Pages（已启用）
- **分支**：`main` 根目录
- **URL**：https://plasticpinaceae.github.io/Pinaceae/
- 推送到 `main` 分支后约 **1-2 分钟自动生效**

## 9. AI 协作准则（用户的偏好）

当用户让你修改这个项目时：

1. ✅ 默认 **保留所有视觉风格约定**（第 5 节），除非用户明确说要改
2. ✅ 修改代码后，**给出完整的 `index.html`**，不要让用户手动拼接
3. ✅ 如果引入新依赖（CDN、第三方库），**事先解释一下为什么需要**，因为用户偏好零依赖
4. ✅ 提交信息（commit message）写中文 + 简短说明，例如 `feat: 添加琥珀色主题`
5. ❌ 不要主动重构代码结构（比如把 inline CSS 拆出来），除非用户要求
6. ❌ 不要建议引入构建工具（webpack/vite），保持"双击就能跑"的特性

---

**最后更新**：2026-05-21
**文件版本**：1.0（首次建立）
