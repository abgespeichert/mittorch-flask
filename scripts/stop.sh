# stop.sh
#!/bin/bash
set -e

if [ -f gunicorn.pid ]; then
  kill -TERM $(cat gunicorn.pid)
  rm gunicorn.pid
fi
