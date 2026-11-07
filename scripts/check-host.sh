#!/usr/bin/env bash
set -euo pipefail

# Read-only Mac development host checks. Does not access/change the TV.
echo "Samsung Tizen Lab - host check"
echo "Operating system: $(uname -s)"
echo "CPU architecture: $(uname -m)"
echo
for c in git node npm sdb tizen gh; do
  if command -v "$c" >/dev/null 2>&1; then
    echo "[installed] $c -> $(command -v "$c")"
  else
    echo "[missing]   $c"
  fi
done
echo
echo "Mac IPv4: System Settings > Wi-Fi > Details > TCP/IP"
echo "Put the Mac's IPv4 into the TV Host PC IP field."
echo "No TV modifications performed."
