#!/usr/bin/env bash
set -e

# Basic vars (override when calling if you want)
WG_HOST="${WG_HOST:-$(hostname -I | awk '{print $1}')}"
WG_PASSWORD="${WG_PASSWORD:-ChangeMe123!}"

echo "Using WG_HOST=$WG_HOST"
echo "Using WG_PASSWORD=$WG_PASSWORD"

# Install Docker if missing (Ubuntu/Debian)
if ! command -v docker >/dev/null 2>&1; then
  echo "Installing Docker..."
  apt-get update
  apt-get install -y ca-certificates curl gnupg
  install -m 0755 -d /etc/apt/keyrings
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg
  chmod a+r /etc/apt/keyrings/docker.gpg
  echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
    $(. /etc/os-release && echo "$VERSION_CODENAME") stable" \
    > /etc/apt/sources.list.d/docker.list
  apt-get update
  apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
fi

# Make folders
mkdir -p /opt/cloud-stack/data/ollama
mkdir -p /opt/cloud-stack/data/wireguard

cd /opt/cloud-stack

# If docker-compose.yml not present, fetch it from your repo
if [ ! -f docker-compose.yml ]; then
  curl -fsSL https://raw.githubusercontent.com/Ashnagdarc/cloud-stack/master/docker-compose.yml \
    -o docker-compose.yml
fi

# Export env vars for this run
export WG_HOST
export WG_PASSWORD

docker compose pull
docker compose up -d

echo
echo "Done."
echo "Ollama:     http://$WG_HOST:11434"
echo "OpenWebUI:  http://$WG_HOST:3000"
echo "WG-Easy UI: http://$WG_HOST:51821"
