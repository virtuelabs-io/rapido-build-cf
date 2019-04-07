COGNITO_AUTH_NAME=rapido

aws cloudformation create-stack \
    --stack-name rapido-build-cognito-resources \
    --template-body file://${PWD}/cf/auth/cognito-resources.yaml \
    --parameters ParameterKey=AuthName,ParameterValue=$COGNITO_AUTH_NAME \
    --capabilities CAPABILITY_IAM \
    --profile rapido-devops

