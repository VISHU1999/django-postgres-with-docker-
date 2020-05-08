#!/bin/sh
# Wait for django
sleep 10
su -m dockeruser -c "exec web -A app worker -l INFO"
