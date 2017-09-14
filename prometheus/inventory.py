import json
import sys
import urllib2
import ssl

# Use this like:
# while sleep 30; do python prometheus/inventory.py https://portal.memhamwan.net/host/ansible.json linux > linux_hosts.json; done
context = ssl._create_unverified_context()
response = urllib2.urlopen(sys.argv[1], context=context)
content = response.read()

json_obj = json.loads(content)

output_list = []
output_list.append({'targets': json_obj[sys.argv[2]], 'labels': {}})
print json.dumps(output_list)
