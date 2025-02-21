#!/usr/bin/env bash

# Install for the user the dev container will be used with,
# as for mcr.microsoft.com/devcontainers/base:*, where the user is not "root".
# https://containers.dev/implementors/features/#user-env-var

# Have to download this file at check for its actual options
# before putting them instide of devcontainer-feature.json.

# The command is taken from the official documentation:
# https://yandex.cloud/en/docs/cli/quickstart#install

su -c '
curl -sSL https://storage.yandexcloud.net/yandexcloud-yc/install.sh | bash
' $_REMOTE_USER