#!/usr/bin/env bash
set -euo pipefail

log_file="/tmp/star-lab-jekyll.log"

if pgrep -f "[j]ekyll serve.*--host 0.0.0.0" >/dev/null; then
  exit 0
fi

nohup bundle exec jekyll serve --host 0.0.0.0 --port 4000 --force_polling >"${log_file}" 2>&1 &
echo "STAR Lab preview is starting on port 4000. Logs: ${log_file}"
