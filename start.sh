#!/bin/bash

mkdir -p /workspace

code-server \
--bind-addr 0.0.0.0:8080 \
--auth none \
/workspace
