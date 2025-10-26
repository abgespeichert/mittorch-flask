# stop.sh
#!/bin/bash
set -e
cd "$(dirname "$0")"

if [ -f gunicorn.pid ]; then
  kill -TERM $(cat gunicorn.pid)
  rm gunicorn.pid
fi
