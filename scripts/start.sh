# start.sh
#!/bin/bash
set -e
cd "$(dirname "$0")"

if [ ! -d "venv" ]; then
  python3 -m venv venv
fi

source venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt

exec gunicorn -w 4 -b 0.0.0.0:8000 app:application \
  --pid gunicorn.pid \
  --access-logfile gunicorn-access.log \
  --error-logfile gunicorn-error.log \
  --daemon
