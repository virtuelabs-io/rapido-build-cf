aws cloudformation create-stack \
    --stack-name ecr-access \
    --template-body file://${PWD}/cf/iam/ecr-access-role.yaml \
    --capabilities CAPABILITY_IAM \
    --profile rapido-devops
