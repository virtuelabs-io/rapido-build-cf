export BUCKET_PREFIX=rapido-build

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
