#!/bin/bash
set -e

USER_NAME="workshop-user"

awslocal iam create-user --user-name "$USER_NAME"

ACCESS_KEY_ID=$(awslocal iam create-access-key \
    --user-name "$USER_NAME" \
    --query 'AccessKey.AccessKeyId' --output text)

SECRET_ACCESS_KEY=$(awslocal iam create-access-key \
    --user-name "$USER_NAME" \
    --query 'AccessKey.SecretAccessKey' --output text)

mkdir -p /tmp/creds
echo "AWS_ACCESS_KEY_ID=$ACCESS_KEY_ID"       >  /tmp/creds/workshop.txt
echo "AWS_SECRET_ACCESS_KEY=$SECRET_ACCESS_KEY" >> /tmp/creds/workshop.txt
echo "AWS_REGION=us-east-1"                    >> /tmp/creds/workshop.txt

# === SECRETS POLICY (unchanged) ===
cat > /tmp/creds/secrets-policy.json << EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Deny",
            "Action": "lambda:*",
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": [
                "secretsmanager:GetSecretValue",
                "secretsmanager:ListSecrets"
            ],
            "Resource": "*"
        }
    ]
}
EOF

POLICY_ARN=$(awslocal iam create-policy \
    --policy-name SecretsManagerAccessPolicy \
    --policy-document file:///tmp/creds/secrets-policy.json \
    --query 'Policy.Arn' --output text)

awslocal iam attach-user-policy \
    --user-name "$USER_NAME" \
    --policy-arn "$POLICY_ARN"

# === LAMBDA INLINE POLICY ===
cat > /tmp/creds/lambda-inline-policy.json << EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "lambda:ListFunctions",
                "lambda:GetFunction",
                "lambda:InvokeFunction"
            ],
            "Resource": "*"
        }
    ]
}
EOF

awslocal iam put-user-policy \
    --user-name "$USER_NAME" \
    --policy-name "LambdaInlinePolicy" \
    --policy-document file:///tmp/creds/lambda-inline-policy.json
