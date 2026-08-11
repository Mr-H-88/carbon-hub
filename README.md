# 碳智汇 · 生物质固废碳管理数据看板

面向生物质固废转化企业的碳管理数据看板，覆盖从原料入库到碳交易的全流程数据管理。

## 核心模块

总览仪表盘 · 原料管理 · 热解制备 · 碳质分析 · 污染治理 · 碳汇核算 · 碳交易市场 · AI 智能优化

## 技术栈

- 纯静态单文件 HTML（HTML + CSS + JS 全部内联）
- ECharts 数据可视化（CDN 引入）
- localStorage 数据持久化
- 无需构建，双击即可运行

## 文件说明

| 文件 | 说明 |
|------|------|
| `index.html` | 主应用 · 8 大模块完整功能 |
| `onboarding.html` | 首次启动体验 · 欢迎页 + 配置向导 + 空状态仪表盘 + 演示模式 |
| `开发日志.html` | 开发过程记录 |

## 使用方式

直接用浏览器打开 `index.html` 或 `onboarding.html` 即可。

## 🌐 在线访问

- 主看板：https://mr-h-88.github.io/carbon-hub/
- 首次启动体验：https://mr-h-88.github.io/carbon-hub/onboarding.html

> 提示：ECharts 通过 CDN 加载，离线时图表可能无法渲染。

## 备份说明

每次重要更改后，双击 `一键备份.bat` 即可自动提交并推送到 GitHub。
