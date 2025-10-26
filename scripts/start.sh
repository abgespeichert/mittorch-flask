# start.sh
#!/bin/bash
set -e
cd "$(dirname "$0")"
source venv/bin/activate
exec gunicorn -w 4 -b 0.0.0.0:8000 app:application \
  --pid gunicorn.pid \
  --access-logfile gunicorn-access.log \
  --error-logfile gunicorn-error.log \
  --daemon
