# reload.sh
#!/bin/bash
set -e
cd "$(dirname "$0")"

if [ -f gunicorn.pid ]; then
  kill -HUP $(cat gunicorn.pid)
else
  ./start.sh
fi
