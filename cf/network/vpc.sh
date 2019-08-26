aws cloudformation create-stack \
    --stack-name rapido-dev-vpc \
    --template-body file://${PWD}/cf/network/vpc.yaml \
    --parameters ParameterKey=EnvironmentName,ParameterValue=rapido-dev-vpc \
    --profile rapido-devops

aws cloudformation create-stack \
    --stack-name rapido-prod-vpc \
    --template-body file://${PWD}/cf/network/vpc.yaml \
    --parameters ParameterKey=EnvironmentName,ParameterValue=rapido-prod-vpc \
    --profile rapido-devops
