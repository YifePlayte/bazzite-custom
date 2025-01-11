#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
# dnf install -y tmux 

# this would install a package from rpmfusion
# rpm-ostree install vlc

#### Example for enabling a System Unit File

# systemctl enable podman.socket

# Install Mihomo Party
env G_MESSAGES_DEBUG=all RUST_LOG=debug dnf install -y https://github.com/mihomo-party-org/mihomo-party/releases/download/v1.5.13/mihomo-party-linux-1.5.13-x86_64.rpm
