#!/bin/bash

./sync_scripts.sh

cd "$(dirname "$0")" || exit 1

if [ $# -gt 0 ]; then
    COMMIT_MSG="$*"
else
    COMMIT_MSG="Updated via Script $(date '+%Y-%d-%m %H:%M')"
fi

git add .
git commit -m "$COMMIT_MSG"
git push
