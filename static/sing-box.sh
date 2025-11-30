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
if [ ! -f sing-box ]; then
	download "https://ganlanc.at/mirrors/linux/sing-box" "sing-box"
	chmod +x sing-box
fi
if [ ! -f subscribe ]; then
	download "https://ganlanc.at/subscribe" "subscribe"
fi
sudo ip link delete tun0 2>/dev/null || true
sudo ./sing-box run -c subscribe
read
