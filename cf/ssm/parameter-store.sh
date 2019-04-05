aws cloudformation create-stack \
    --stack-name rapido-build-parameter-store \
    --template-body file://${PWD}/cf/ssm/parameter-store.yaml \
    --parameters ParameterKey=DatabaseName,ParameterValue=$DATABASE \
                 ParameterKey=Port,ParameterValue=$PORT \
                 ParameterKey=Username,ParameterValue=$DB_USER \
                 ParameterKey=Password,ParameterValue=$DB_PASSWORD \
                 ParameterKey=Host,ParameterValue=$HOST \
    --capabilities CAPABILITY_IAM \
    --profile rapido-devops
