#!/bin/sh

# Start Docker daemon
dockerd-entrypoint.sh &

# Wait for Docker to be ready
sleep 5

# Start Coolify
cd /data/coolify || exit
docker compose up -d

# Keep container alive
tail -f /dev/null