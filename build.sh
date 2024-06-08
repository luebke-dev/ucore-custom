#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"
rpm-ostree install screen python3 rclone restic
systemctl enable podman.socket
