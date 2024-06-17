#!/bin/bash

set -e

# Ensure the RCLONE_CONF environment variable is set
if [[ -n "$RCLONE_CONF" ]]; then
  echo "Setting up rclone config..." >> "$GITHUB_OUTPUT"
  mkdir -p ~/.config/rclone
  echo "$RCLONE_CONF" > ~/.config/rclone/rclone.conf
fi

sh -c "rclone $*" 

