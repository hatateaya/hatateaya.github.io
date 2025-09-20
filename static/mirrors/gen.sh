#!/bin/bash

output_file="index.html"

cat > "$output_file" << EOL
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>橄榄猫实用资源镜像</title>
</head>
<body>
<div class="container">
    <h1>橄榄猫实用资源镜像</h1>
    <h2>Ganlan Cat Useful Resources Mirror</h2>
    <ul>
EOL

for file in *; do
    if [ -f "$file" ] && [ "$file" != "$(basename "$0")" ] && [ "$file" != "$output_file" ]; then
        echo "        <li><a href=\"$file\" download>$file</a></li>" >> "$output_file"
    fi
done

cat >> "$output_file" << EOL
    </ul>
</div>
</body>
</html>
EOL

cd ../../
hugo -d /usr/share/caddy
cd static/mirrors
