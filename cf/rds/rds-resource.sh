aws cloudformation create-stack \
    --stack-name rapido-build-$DB_NAME-database \
    --template-body file://${PWD}/cf/rds/rds-test.yaml \
    --parameters ParameterKey=DBInstanceClass,ParameterValue=$DB_INSTANCE_CLASS \
                 ParameterKey=DBName,ParameterValue=$DB_NAME \
                 ParameterKey=AllocatedStorage,ParameterValue=$ALLOCATED_STORAGE \
                 ParameterKey=Username,ParameterValue=$USERNAME \
                 ParameterKey=Password,ParameterValue=$PASSWORD \
                 ParameterKey=VpcId,ParameterValue=$VPC_ID \
                 ParameterKey=Engine,ParameterValue=$ENGINE \
                 ParameterKey=EngineVersion,ParameterValue=$ENGINE_VERSION \
    --capabilities CAPABILITY_IAM \
    --profile rapido-devops

