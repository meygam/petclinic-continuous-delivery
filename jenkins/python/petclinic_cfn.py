import boto
import boto.cloudformation


template_body = open('/var/lib/jenkins/jobs/petclinic-aws-deploy/workspace/cloudformation/petclinic.json').read()
print template_body
cfn_conn = boto.cloudformation.connect_to_region('us-west-1')
cfn_conn.create_stack('petclinic', template_body)
