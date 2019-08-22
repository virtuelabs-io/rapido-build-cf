aws cloudformation create-stack \
    --stack-name sso-admin-role \
    --template-body file://${PWD}/cf/iam/aws-admin-role.yaml \
    --capabilities CAPABILITY_IAM \
    --capabilities CAPABILITY_NAMED_IAM \
    --profile rapido-devops
