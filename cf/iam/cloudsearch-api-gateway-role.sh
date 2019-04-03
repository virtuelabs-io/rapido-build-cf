aws cloudformation create-stack \
    --stack-name cloudsearch-api-gateway-access \
    --template-body file://${PWD}/cf/iam/cloudsearch-api-gateway-role.yaml \
    --capabilities CAPABILITY_IAM \
    --profile rapido-devops
