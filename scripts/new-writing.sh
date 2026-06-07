#!/usr/bin/env bash

set -e

SLUG=$1
DATE=${2:-$(date +%F)}

if [ -z "$SLUG" ]; then
  echo "Usage:"
  echo "  ./scripts/new-writing.sh <slug> [date]"
  echo
  echo "Example:"
  echo "  ./scripts/new-writing.sh hello-agents-agent-basics"
  echo "  ./scripts/new-writing.sh npm-npx-nvm-path 2026-06-10"
  exit 1
fi

FILE="src/content/blog/${SLUG}.md"

if [ -f "$FILE" ]; then
  echo "Writing already exists: $FILE"
  if command -v cursor >/dev/null 2>&1; then
    cursor "$FILE"
  else
    echo "Open it manually: $FILE"
  fi
  exit 0
fi

cat > "$FILE" <<EOT
---
title: "文章标题"
date: "${DATE}"
summary: "用一两句话概括这篇文章的核心内容。"
tags: ["writing"]
---

## 写作背景

这篇文章为什么要写？

我最近遇到了什么问题、学习了什么内容，或者经历了什么项目场景？

## 核心问题

这篇文章主要想回答什么问题？

- 问题一：
- 问题二：
- 问题三：

## 我的原始理解

在系统学习或实践之前，我原本是怎么理解这个问题的？

## 学习或实践过程

这里记录具体过程。

可以包括：

- 我阅读了什么
- 我做了什么实验
- 我遇到了什么问题
- 我如何定位问题
- AI 给了我什么帮助
- 最后我是怎么解决的

## 关键概念梳理

### 概念一

解释它是什么，解决什么问题。

### 概念二

解释它和其他概念的区别。

### 概念三

结合自己的理解进行总结。

## 我的阶段性理解

用自己的话总结目前的理解。

不要追求权威定义，重点是写清楚：

- 我现在怎么理解它
- 它解决了什么问题
- 它的边界在哪里
- 我以前哪里理解错了

## 可以复用的经验

这次学习或实践后，有哪些东西以后可以复用？

- 
- 
- 

## 仍然没有想清楚的问题

- 
- 
- 

## 总结

用几句话收尾。

这篇文章最终沉淀了什么理解？
下一步准备继续研究什么？
EOT

echo "Created: $FILE"

if command -v cursor >/dev/null 2>&1; then
  cursor "$FILE"
else
  echo "Cursor command not found. Open it manually: $FILE"
fi
