#!/bin/bash
podman run -d -p 0.0.0.0:2222:22 --name latex --restart always -v /home/jan/latex/repos:/root/repos latex