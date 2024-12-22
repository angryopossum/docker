curl -X POST "localhost:9200/_security/user/kibana_user" -H "Content-Type: application/json" -d '{
  "password": "q1w2e3r4",
  "roles": ["kibana_system"],
  "enabled": true
}' -u elastic:changeme
