import boto
import boto.cloudformation
import json


# with open("/var/lib/jenkins/jobs/petclinic-app/workspace/cloudformation/petclinic.json") as json_file:
#     template_body = json.load(json_file)
#     print template_body
#     print json.dumps(template_body, sort_keys=True, indent=4, separators=(',', ': '))
#     cfn_conn = boto.cloudformation.connect_to_region('us-west-1')
#     cfn_conn.create_stack('petclinic', template_body)

template_body = open('/var/lib/jenkins/jobs/petclinic-app/workspace/cloudformation/petclinic.json').read()
print template_body
cfn_conn = boto.cloudformation.connect_to_region('us-west-1')
cfn_conn.create_stack('petclinic', template_body)
