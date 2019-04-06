aws cloudformation create-stack \
    --stack-name rapido-build-aurora-serverless \
    --template-body file://${PWD}/cf/rds/aurora-serverless.yaml \
    --parameters ParameterKey=BastionImageId,ParameterValue=$BASTION_IMAGE_ID \
                 ParameterKey=BastionInstanceRole,ParameterValue=$BASTION_INSTANCE_ROLE \
                 ParameterKey=BastionKeyName,ParameterValue=$BASTION_KEY_NAME \
                 ParameterKey=DatabaseName,ParameterValue=$DATABASE \
                 ParameterKey=EngineVersion,ParameterValue=$ENGINE_VERSION \
                 ParameterKey=MasterUsername,ParameterValue=$MASTER_USER \
                 ParameterKey=MasterUserPassword,ParameterValue=$MASTER_PASSWORD \
                 ParameterKey=VpcId,ParameterValue=$VPC_ID \
                 ParameterKey=VpcSecurityGroupId,ParameterValue=$VPC_SECURITY_GROUP_ID \
    --capabilities CAPABILITY_NAMED_IAM \
    --profile rapido-devops