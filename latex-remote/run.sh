#!/bin/bash
podman run -d -p 0.0.0.0:2222:22 --name latex --restart unless-stopped latex