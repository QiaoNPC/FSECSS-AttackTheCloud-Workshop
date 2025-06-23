#!/bin/bash
set -e

awslocal lambda create-function \
    --function-name fsecss-lambda \
    --runtime python3.9 \
    --handler lambda_function.handler \
    --zip-file fileb:///tmp/lambda-code/function.zip \
    --role arn:aws:iam::000000000000:role/lambda-root \
    --timeout 10
