aws cloudformation create-stack \
    --stack-name rapido-build-$DB_NAME-database \
    --template-body file://${PWD}/cf/rds/rds.yaml \
    --parameters ParameterKey=DBInstanceClass,ParameterValue=$DB_INSTANCE_CLASS \
                 ParameterKey=DBName,ParameterValue=$DB_NAME \
                 ParameterKey=AllocatedStorage,ParameterValue=$ALLOCATED_STORAGE \
                 ParameterKey=Username,ParameterValue=$DB_USERNAME \
                 ParameterKey=Password,ParameterValue=$PASSWORD \
                 ParameterKey=VpcId,ParameterValue=$VPC_ID \
                 ParameterKey=Engine,ParameterValue=$ENGINE \
                 ParameterKey=EngineVersion,ParameterValue=$ENGINE_VERSION \
                 ParameterKey=EnvironmentName,ParameterValue=$ENVIRONMENT_NAME \
                 ParameterKey=Port,ParameterValue=$PORT \
                 ParameterKey=PrivateSubnets,ParameterValue=\"subnet-036ec93f28aa1e035,subnet-0f708f6e7f34226a0\" \
    --capabilities CAPABILITY_IAM \
    --profile DevECommerce
