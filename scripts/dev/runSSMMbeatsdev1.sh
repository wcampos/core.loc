#!/bin/bash
aws ssm send-command --document-name "AWS-RunPowerShellScript" --document-version "1" --targets '[{"Key":"tag:Environment","Values":["dev1"]}]' --parameters '{"workingDirectory":[""],"executionTimeout":["3600"],"commands":["$BucketName=\"csre-demo-opsw-001\"","$Region=\"us-east-1\"","$MetricBeatZip=\"metricbeat-7.6.2-windows-x86_64.zip\"","$MetricBeatFiles=\"metricbeat-config-files.zip\"","$ElasticBasePath='"'"'D:\\elastic'"'"'","$TmpPath='"'"'C:\\tmp'"'"'","","If(!(Test-Path $ElasticBasePath)){","","mkdir -p $ElasticBasePath -ea 0","","Import-Module AWSPowerShell","powershell.exe -Command Read-S3Object -BucketName $BucketName -Region $Region -Key $MetricBeatZip -File $TmpPath\\$MetricBeatZip","powershell.exe -Command Read-S3Object -BucketName $BucketName -Region $Region -Key $MetricBeatFiles -File $TmpPath\\$MetricBeatFiles","","Expand-Archive -Path $TmpPath\\$MetricBeatZip -DestinationPath $ElasticBasePath -Force","Rename-Item -Path \"$ElasticBasePath\\metricbeat*\" -NewName \"$ElasticBasePath\\metricbeat\"","","PowerShell.exe -ExecutionPolicy UnRestricted -File $ElasticBasePath\\metricbeat\\install-service-metricbeat.ps1","","Expand-Archive -Force -Path $TmpPath\\$MetricBeatFiles -DestinationPath \"$ElasticBasePath\\metricbeat\\\"","","Get-Service -Name metricbeat | Set-Service -Status Running","","} else {"," Write-Output \"MetricBeats already Installed!\"","}"]}' --timeout-seconds 600 --max-concurrency "1" --max-errors "0" --output-s3-bucket-name "csre-demo-opsw-001" --output-s3-key-prefix "./ssm-powershell-logs/" --region us-east-1
