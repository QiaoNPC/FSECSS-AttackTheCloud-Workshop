#!/bin/bash
set -e

awslocal secretsmanager create-secret \
    --name flag \
    --secret-string '{"username":"admin","password":"fsecss{M!5c0nfiGUrED_s3CreTs}"}'
