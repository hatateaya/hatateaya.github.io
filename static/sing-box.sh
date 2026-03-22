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
FILES="config.json config-notun.json config-redirect.json"

if [ ! -f sing-box ]; then
    download "${BASE_URL}/mirrors/linux/sing-box" "sing-box"
    chmod +x sing-box
fi

for f in $FILES; do
    if [ ! -f "$f" ]; then
        download "${BASE_URL}/$f" "$f"
    fi
done

echo "Please select the configuration to start:"
echo "1) config.json (Default, TUN mode)"
echo "2) config-notun.json (Mixed-in mode)"
echo "3) config-redirect.json (Redirected TUN mode)"
printf "Selection [1-3]: "
read choice

case $choice in
    2)
        ./sing-box run -c config-notun.json
        ;;
    3)
        sudo ip link delete tun0 2>/dev/null || true
        sudo ./sing-box run -c config-redirect.json
        ;;
    *)
        sudo ip link delete tun0 2>/dev/null || true
        sudo ./sing-box run -c config.json
        ;;
esac
read