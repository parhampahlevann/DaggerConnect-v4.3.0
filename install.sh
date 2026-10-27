#!/usr/bin/env bash
set -euo pipefail

REPO="parhampahlevann/DaggerConnect-v4.3.0"
TAG="v4.3.0"
ZIP="DaggerConnect-v4.3.0-Offline.zip"
DIR="DaggerConnect-v4.3.0-Offline"
URL="https://github.com/${REPO}/releases/download/${TAG}/${ZIP}"

echo "[*] Downloading ${ZIP} ..."
curl -fsSL -o "${ZIP}" "${URL}"

echo "[*] Extracting ..."
unzip -o "${ZIP}"

echo "[*] Running installer ..."
sudo bash "./${DIR}/install.sh" < /dev/tty
