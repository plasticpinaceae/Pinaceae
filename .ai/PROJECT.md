# S.S.T.G. — AI 开发入口

> **读这一份 = 5 秒进入项目状态。** 详细背景见同级仓库的 `AI_CONTEXT.md`。

## 是什么

**S.S.T.G. · Simple Seamless Texture Generator** —— 浏览器端的无缝纹理生成器，纯原生 HTML/CSS/JS，单文件，零依赖。

- Live: <https://plasticpinaceae.github.io/Pinaceae/>
- 仓库名 `Pinaceae` 是历史遗留（作者账号主题），**项目正式名是 S.S.T.G.**，不要搞错。
- 别再提"Retro CRT Scanner"，那是上一版已废弃的项目。

## 唯一要改的文件

```
index.html   ← HTML / CSS / JS 全部在这一个文件里
```

字体：`fonts/MicrogrammaD-*.otf`（本地引用，勿改路径）。

## 快速跑起来

```powershell
cd D:\dev\sstg\repo
./dev.ps1
# → http://localhost:8000
```

## 硬约束（改之前先看）

- 配色主变量在 `:root`：`--bg:#0d0d0d` / `--acc:#c8a84e`（金）
- 字体：Microgramma（标题）/ Inter（正文）/ Consolas（数值）
- 无框架、无构建工具、无 npm、无 CDN（除非明确讨论过）
- 双击 `index.html` 必须能跑

## 交付格式

- 给作者时**输出完整 `index.html`**，不要 diff/patch
- commit 用中文：`feat: xxx` / `fix: xxx` / `docs: xxx`

## 常用命令

```powershell
# 本地起服务
cd D:\dev\sstg\repo; ./dev.ps1

# 提交并部署（push main 后 GitHub Pages 自动 1-2 分钟生效）
git add .
git commit -m "feat: 描述"
git push
```

## 目录导航

- `../README.md`      —— 给人看的简介
- `../AI_CONTEXT.md`  —— 项目详细背景、TODO、风险清单
- `../index.html`     —— 全部代码
- `../fonts/`         —— 本地字体
- `D:\dev\sstg\docs\` —— 开发笔记 / 参考图（不进仓库）
