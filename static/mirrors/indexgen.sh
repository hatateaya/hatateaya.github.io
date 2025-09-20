#!/bin/bash

output_file="index.html"

cat > "$output_file" << EOL
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>文件列表</title>
</head>
<body>
<div class="container">
    <h1>文件列表</h1>
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
