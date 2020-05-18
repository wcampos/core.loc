# opsworks_demo

Opworks information can be found in:
- https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-installingcustom-repo.html

## S3 Bucket for Demo 
The bucket was created before using CLI, since we are using and existing one. 
Also, the installers need to be in bucket prior to opsworks so it can pull and install 

### Bucket Steps 

To Create:
```bash 
aws s3 mb s3://csre-demo-opsw-wil-001
```

To Verify:
```bash 
aws s3 ls s3://csre-demo-opsw-wil-00
```
**Should show a list of files inside**

To Remove:
```bash 
aws s3 rb S3://csre-demo-opsw-wil-001
```