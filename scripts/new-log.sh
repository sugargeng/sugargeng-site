#!/usr/bin/env bash

set -e

DATE=${1:-$(date +%F)}
FILE="src/content/logs/${DATE}.md"

if [ -f "$FILE" ]; then
  echo "Log already exists: $FILE"
  if command -v cursor >/dev/null 2>&1; then
    cursor "$FILE"
  else
    echo "Open it manually: $FILE"
  fi
  exit 0
fi

cat > "$FILE" <<EOT
---
title: "${DATE} 学习日志"
date: "${DATE}"
summary: "记录今天的学习、问题复盘和下一步计划。"
tags: ["daily"]
---

## 今天学了什么

- 

## 今天做了什么

- 

## 我真正理解了什么

- 

## 还没掌握好的地方

- 

## 今天遇到的问题

- 

## AI 帮我解决了什么

- 

## 我自己的判断和反思

- 

## 明天计划

- 
EOT

echo "Created: $FILE"

if command -v cursor >/dev/null 2>&1; then
  cursor "$FILE"
else
  echo "Cursor command not found. Open it manually: $FILE"
fi
