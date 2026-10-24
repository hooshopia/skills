#!/usr/bin/env bash
# Copies the Hooshopia skills into Claude Code's skills folder.
#   ./install.sh            -> ~/.claude/skills   (all projects)
#   ./install.sh --project  -> ./.claude/skills   (current project only)
set -euo pipefail

src="$(cd "$(dirname "$0")" && pwd)/skills"
if [ "${1:-}" = "--project" ]; then
  dest="$PWD/.claude/skills"
else
  dest="${HOME}/.claude/skills"
fi

mkdir -p "$dest"
count=0
for dir in "$src"/*/; do
  name="$(basename "$dir")"
  if [ -e "$dest/$name" ]; then
    echo "skip  $name (already exists in $dest; remove it to reinstall)"
    continue
  fi
  cp -r "$dir" "$dest/$name"
  echo "added $name"
  count=$((count + 1))
done
echo "Installed $count skill(s) into $dest"
