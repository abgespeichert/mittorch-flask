# create.sh
#!/bin/bash
set -e
cd "$(dirname "$0")"
source venv/bin/activate
pip install -r requirements.txt
