aws cloudformation create-stack \
    --stack-name sso-admin-role \
    --template-body file://${PWD}/cf/iam/aws-admin-role.yaml \
    --capabilities CAPABILITY_IAM \
    --capabilities CAPABILITY_NAMED_IAM \
    --profile rapido-devops

aws cloudformation create-stack \                                                                                                                                                                                                                                    255 ↵
    --stack-name sso-lead-developer-role \
    --template-body file://${PWD}/cf/iam/aws-lead-developer-role.yaml \
    --capabilities CAPABILITY_IAM \
    --capabilities CAPABILITY_NAMED_IAM \
    --profile rapido-devops
