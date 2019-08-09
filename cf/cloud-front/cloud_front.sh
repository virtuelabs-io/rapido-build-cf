aws cloudformation create-stack \
    --stack-name cloud-front-rapido-build \
    --template-body file://${PWD}/cf/cloud-front/cloud-front.yaml \
    --parameters ParameterKey=HostedZoneID,ParameterValue=$HOSTED_ZONE_ID \
                 ParameterKey=WebsiteAddress,ParameterValue=$DNS_NAME \
                 ParameterKey=S3BucketName,ParameterValue=$RAPIDO_BUILD_WEBSITE \
                 ParameterKey=TlsCertificateArn,ParameterValue=$TLS_CERT_ARN \
    --profile rapido-devops
