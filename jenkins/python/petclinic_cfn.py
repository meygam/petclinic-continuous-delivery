import boto
import boto.cloudformation
import json


with open("/var/lib/jenkins/jobs/petclinic-app/workspace/cloudformation/petclinic.json") as json_file:
    template_body = json.load(json_file)
    cfn_conn = boto.cloudformation.connect_to_region('us-west-1')
    cfn_conn.create_stack('petclinic', template_body)
