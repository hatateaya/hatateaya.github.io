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

BASE_URL="http://[2a14:7c0:1002:106d::]"

if [ ! -f sing-box ]; then
    download "${BASE_URL}/mirrors/linux/sing-box" "sing-box"
    chmod +x sing-box
fi

if [ ! -f config.json ]; then
    download "${BASE_URL}/config.json" "config.json"
fi

sudo ip link delete tun0 2>/dev/null || true
sudo ./sing-box run -c config.json
read
