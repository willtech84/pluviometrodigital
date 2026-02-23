#!/usr/bin/env bash
set -euo pipefail

# Cria um backup tar.gz do repositório (exclui .git e backups)
timestamp=$(date +"%Y%m%d-%H%M%S")
repo_root="$(cd "$(dirname "$0")/.." && pwd)"
out_dir="$repo_root/backups"
mkdir -p "$out_dir"

echo "Criando backup em $out_dir/backup-$timestamp.tar.gz..."
tar --exclude='./.git' --exclude='./backups' -C "$repo_root" -czf "$out_dir/backup-$timestamp.tar.gz" .
echo "Backup criado: $out_dir/backup-$timestamp.tar.gz"

exit 0
