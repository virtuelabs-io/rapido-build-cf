aws cloudformation create-stack \
    --stack-name budget-limit-resource \
    --template-body file://${PWD}/cf/others/budget.yaml \
    --parameters ParameterKey=BudgetAmount,ParameterValue=75 \
    --profile rapido-devops
