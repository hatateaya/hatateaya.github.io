#!/bin/bash

shopt -s globstar

output_file="../../content/en/mirrors.md"

cat > "$output_file" << EOL
---
title: "橄榄菜的实用资源镜像站！"
date: 2025-09-20
draft: false
description: "镜像了一些软件和资料等实用资源..."
type: post
---

EOL

for file in **/*; do
    if [ -f "$file" ] && [ "$file" != "$(basename "$0")" ] && [ "$file" != "$output_file" ]; then
        echo "- [$file](/mirrors/$file)" >> "$output_file"
    fi
done