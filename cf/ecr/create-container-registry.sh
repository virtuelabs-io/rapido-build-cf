aws cloudformation create-stack \
    --stack-name container-registry-rapido-db-migrations \
    --template-body file://${PWD}/cf/ecr/container-registry.yaml \
    --parameters ParameterKey=ContainerRegistryName,ParameterValue=rapido-db-migrations \
                 ParameterKey=IAMUsername,ParameterValue=rapido-devops  \
    --profile rapido-devops
