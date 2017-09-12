curl -v -k -X 'POST' -H "Content-Type: application/json" --user 'admin:admin' -d '{
  "name":"prometheus",
  "type":"prometheus",
  "url":"http://prometheus:9090/",
  "access":"proxy",
  "basicAuth":false
}' http://localhost:3000/api/datasources
