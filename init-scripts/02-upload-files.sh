#!/bin/bash
set -e

awslocal s3 cp /tmp/fsecss-bucket/flag2.txt s3://fsecss-bucket/flag.txt
awslocal s3 cp /tmp/fsecss-bucket/flag1.txt s3://fsecss-bucket/flag.txt