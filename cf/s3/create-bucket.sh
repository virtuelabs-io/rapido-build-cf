export BUCKET_PREFIX=rapido-build
export DEV_RAPIDO_BUILD_S3_BUCKET=dev-rapido-build-website

aws cloudformation create-stack \
    --stack-name $BUCKET_PREFIX-assets-bucket \
    --template-body file://${PWD}/cf/s3/assets-bucket.yaml \
    --parameters ParameterKey=AssetsBucketName,ParameterValue=$BUCKET_PREFIX-assets-bucket \
    --capabilities CAPABILITY_IAM \
    --profile rapido-devops

aws cloudformation create-stack \
    --stack-name $BUCKET_PREFIX-secrets-bucket \
    --template-body file://${PWD}/cf/s3/secrets-bucket.yaml \
    --parameters ParameterKey=SecretsBucketName,ParameterValue=$BUCKET_PREFIX-secrets-bucket \
    --profile rapido-devops

aws cloudformation create-stack \
    --stack-name $BUCKET_PREFIX-schemas-bucket \
    --template-body file://${PWD}/cf/s3/schemas-bucket.yaml \
    --parameters ParameterKey=SchemasBucketName,ParameterValue=$BUCKET_PREFIX-schemas-bucket \
    --capabilities CAPABILITY_IAM \
    --profile rapido-devops

aws cloudformation create-stack \
    --stack-name dev-rapido-build-website \
    --template-body file://${PWD}/cf/s3/website-bucket.yaml \
    --parameters ParameterKey=BucketName,ParameterValue=$DEV_RAPIDO_BUILD_S3_BUCKET \
    --profile rapido-devops

aws cloudformation create-stack \
    --stack-name logs-cf-rapido-build-bucket \
    --template-body file://${PWD}/cf/s3/cf-logs-bucket.yaml \
    --parameters ParameterKey=cloudFrontLogsBucketName,ParameterValue=logs-cf-rapido-build-bucket \
    --profile rapido-devops
