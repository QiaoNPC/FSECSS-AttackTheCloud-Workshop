#!/bin/bash
set -e

awslocal s3 mb s3://fsecss-bucket
awslocal s3api put-bucket-versioning --bucket fsecss-bucket --versioning-configuration Status=Enabled