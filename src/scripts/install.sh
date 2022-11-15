#!/bin/bash

# Determine the architecture of the platform
suffix=$([[ $(uname -m) == "aarch64" || $(uname -m) == "arm64" ]] && echo "arm64" || echo "x86-64")

# Fetch the latest TCC agent version and make it executable
curl -L -o /tmp/agent https://app.testcontainers.cloud/download/testcontainers-cloud-agent_linux_"$suffix"
chmod +x /tmp/agent
