#!/bin/bash
#Check for the touch file and exit early if it exists (that means this has already run)
if [ -f /etc/opt/grafana_setup_run.touch ]; then
    exit 1
fi

curl -v -k -X 'POST' -H "Content-Type: application/json" --user 'admin:admin' -d '{
  "name":"prometheus",
  "type":"prometheus",
  "url":"http://prometheus:9090/",
  "access":"proxy",
  "basicAuth":false
}' http://localhost:3000/api/datasources

#Prevent this from running again
touch /etc/opt/grafana_setup_run.touch

exit 1
