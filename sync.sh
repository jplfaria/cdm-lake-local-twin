#!/bin/bash
# Save this as: sync.sh
chmod 600 ~/.ssh/id_ed25519 2>/dev/null
chmod 700 ~/.ssh 2>/dev/null
git add .
git commit -m "working working..."
git push
