# build_files.sh
pip install -r requirements.txt
python manage.py collectstatic --noinput

#!/bin/bash

# Build the project
echo "Building the project..."
python manage.py collectstatic --no-input
python manage.py makemigrations
python manage.py migrate