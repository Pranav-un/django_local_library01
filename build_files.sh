# build_files.sh
pip install -r requirements.txt
python manage.py collectstatic --noinput

#!/bin/bash

# Build the project
echo "Building the project..."
python manage.py collectstatic --no-input
python manage.py makemigrations
python manage.py migrate

#!/bin/bash

# Exit on error
set -e

# Build the project
echo "Collecting static files..."
python manage.py collectstatic --no-input

echo "Running migrations..."
python manage.py makemigrations
python manage.py migrate

# Make script executable
chmod +x build_files.sh