#!/bin/bash
exec /init
mkdir -p /workspace

exec /app/code-server/biin/code-server \
--bind-addr 0.0.0.0:8080 \
--auth none \
/workspace
