aws cloudformation create-stack \
    --stack-name certificate-cloudfront \
    --template-body file://${PWD}/cf/acm/acm.yaml \
    --profile rapido-devops --region us-east-1
