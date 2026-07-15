#!/usr/bin/env bash
set -euo pipefail

bundler_version="$(ruby -e 'lock = File.read("Gemfile.lock"); puts lock[/BUNDLED WITH\s+(\S+)/m, 1]')"

if [[ -z "${bundler_version}" ]]; then
  echo "Could not determine the Bundler version from Gemfile.lock." >&2
  exit 1
fi

if ! gem list --installed --exact bundler --version "${bundler_version}" >/dev/null; then
  gem install bundler --version "${bundler_version}" --no-document
fi

bundle "_${bundler_version}_" install
