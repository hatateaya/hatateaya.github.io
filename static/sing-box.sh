#!/bin/sh

download() {
    local url="$1"
    local output="$2"
    if command -v wget >/dev/null 2>&1; then
        wget -O "$output" "$url"
    elif command -v curl >/dev/null 2>&1; then
        curl -L "$url" -o "$output"
    else
        exit 1
    fi
}

BASE_URL="https://ganlanc.at"
FILES="config.json"

if [ ! -f sing-box ]; then
    download "${BASE_URL}/mirrors/linux/sing-box" "sing-box"
    chmod +x sing-box
fi

for f in $FILES; do
    if [ ! -f "$f" ]; then
        download "${BASE_URL}/$f" "$f"
    fi
done

sudo ./sing-box run -c config.json

read