#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"
rpm-ostree install screen python3 rclone
systemctl enable podman.socket
