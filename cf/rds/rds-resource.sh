DB_INSTANCE_CLASS=db.t3.micro
DB_NAME=rapidotest
ALLOCATED_STORAGE=5
USERNAME=rapidoadmin
PASSWORD=G00dT0Kn0wY0uAreG00d2019
VPC_ID=vpc-d41097bc

aws cloudformation create-stack \
    --stack-name rapido-build-$DB_NAME-database \
    --template-body file://${PWD}/cf/rds/rds-test.yaml \
    --parameters ParameterKey=DBInstanceClass,ParameterValue=$DB_INSTANCE_CLASS \
                 ParameterKey=DBName,ParameterValue=$DB_NAME \
                 ParameterKey=AllocatedStorage,ParameterValue=$ALLOCATED_STORAGE \
                 ParameterKey=Username,ParameterValue=$USERNAME \
                 ParameterKey=Password,ParameterValue=$PASSWORD \
                 ParameterKey=VpcId,ParameterValue=$VPC_ID \
    --capabilities CAPABILITY_IAM \
    --profile rapido-devops


# aws rds modify-db-instance --db-instance-identifier rdud528wmt7bx0 --publicly-accessible --profile rapido-devops

# aws rds describe-db-instances --db-instance-identifier rdud528wmt7bx0 --profile rapido-devops

# aws rds modify-db-instance --db-instance-identifier rdud528wmt7bx0 --no-publicly-accessible --profile rapido-devops