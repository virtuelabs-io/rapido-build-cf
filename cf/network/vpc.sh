aws cloudformation create-stack \
    --stack-name rapido-stage-network \
    --template-body file://${PWD}/cf/network/vpc.yaml \
    --parameters ParameterKey=EnvironmentName,ParameterValue=stage \
    --profile DevECommerce

aws cloudformation create-stack \
    --stack-name rapido-prod-network \
    --template-body file://${PWD}/cf/network/vpc.yaml \
    --parameters ParameterKey=EnvironmentName,ParameterValue=prod \
    --profile DevECommerce
