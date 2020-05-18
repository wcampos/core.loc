aws ssm send-command --document-name "AWS-ApplyChefRecipes" --document-version "1" --targets '[{"Key":"InstanceIds","Values":["i-0eff49746da3531f8"]}]' --parameters '{"SourceType":["S3"],"SourceInfo":["{\"path\":\"https://csre-demo-opsw-001.s3.amazonaws.com/chef-recipes.tar.gz\"}"],"RunList":["recipe[chef-demo::default]"],"JsonAttributesContent":["{}"],"ChefClientVersion":["14"],"ChefClientArguments":[""],"WhyRun":["False"],"ComplianceSeverity":["None"],"ComplianceType":["Custom:Chef"],"ComplianceReportBucket":[""]}' --timeout-seconds 600 --max-concurrency "50" --max-errors "0" --output-s3-bucket-name "csre-demo-opsw-001" --output-s3-key-prefix "./chef-logs/" --region us-east-1
