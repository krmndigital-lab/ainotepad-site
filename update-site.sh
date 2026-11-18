#!/bin/bash
# AI Notepad site: publish local changes (privacy, licences, …) to the existing public repo.
# Run by the owner: bash ~/ainotepad-site/update-site.sh
set -euo pipefail
cd "$(dirname "$0")"
git add -A
git commit -q -m "site: update" || echo "nothing new to commit"
git push origin HEAD:main
echo "Pages (live in about a minute): https://krmndigital-lab.github.io/ainotepad-site/"
