# rapido-cf
Cloudformation templates for rapidobuild

## Uploading static assets to S3

```sh
aws s3 cp ./assets s3://<bucket>/ --recursive --profile rapido-devops
```
