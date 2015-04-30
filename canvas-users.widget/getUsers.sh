#!/bin/zsh

TMPFILE="/tmp/users.csv"
COPYCOMMAND="\copy (SELECT email FROM users ORDER BY created_at DESC LIMIT 10) to $TMPFILE WITH CSV"

heroku pg:psql -a canvas-api-prod BRONZE -c $COPYCOMMAND > /dev/null
cat /tmp/users.csv | awk '{print $0 " <br>"}'
