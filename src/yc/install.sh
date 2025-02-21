#!/usr/bin/env bash

# Install for the user the dev container will be used with,
# as for mcr.microsoft.com/devcontainers/base:*, where the user is not "root".
# https://containers.dev/implementors/features/#user-env-var
USERNAME=${USERNAME:-$_REMOTE_USER}
if [ "$USERNAME" = "root" ]; then
  HOME="/root"
else
  HOME="/home/$USERNAME"
fi

# Have to download this file at check for its actual options
# before putting them instide of devcontainer-feature.json.
curl -sSL https://storage.yandexcloud.net/yandexcloud-yc/install.sh | bash