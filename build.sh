#!/usr/bin/env bash

set -euo pipefail # thanks cloudflare!!!

type="${1:-debug}"

if [[ "$type" == "debug" ]]; then
    meson setup build -Dbuildtype=debug -Db_sanitize=address,undefined,leak --reconfigure
else
    meson setup build -Dbuildtype=release --reconfigure
fi

find . -name "*.c" -o -name "*.h" | xargs clang-format -i
ninja -C build
