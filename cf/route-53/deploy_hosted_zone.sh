aws cloudformation create-stack \
    --stack-name dev-rapido-build-dev-hosted-zone \
    --template-body file://${PWD}/cf/route-53/hosted-zone.yaml \
    --parameters ParameterKey=DomainName,ParameterValue=dev.rapidobuild.com \
    --profile rapido-devops
