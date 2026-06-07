# Scripts

这个目录用于存放博客内容维护相关的辅助脚本。

当前博客的核心内容分为两类：

- `logs`：每日学习日志，记录当天学习过程、问题复盘和下一步计划。
- `writing`：正式文章，沉淀阶段性理解、技术总结、项目复盘和长期思考。

脚本只负责生成规范化 Markdown 模板，不负责自动发布。

---

## new-log.sh

创建一篇每日学习日志。

生成位置：
src/content/logs/YYYY-MM-DD.md

创建指定日期日志:
./scripts/new-log.sh 2026-06-07


## new-writing.sh
生成位置:
src/content/blog/<slug>.md

创建文章：
./scripts/new-writing.sh hello-agents-agent-basics
也可以指定日期
./scripts/new-writing.sh hello-agents-agent-basics 2026-06-10

##slug规范
slug 会成为文章 URL 的一部分，所以必须使用小写英文和短横线。
