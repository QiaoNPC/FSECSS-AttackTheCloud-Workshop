# Lab 3 - Secrets Manager

In this challenge, you will learn about **AWS Secrets Manager** and how poor IAM configurations can expose sensitive secrets.

---

## ☁️ What is Secrets Manager?

AWS Secrets Manager stores **sensitive information** like passwords, API keys, and flags.  
Proper IAM controls are required to restrict who can access these secrets.

---

## ⚠️ Why is this dangerous?

- Misconfigured IAM roles can allow unintended users to read secrets  
- Exposed secrets can lead to further compromise  
- Attackers can list and retrieve secrets via the AWS CLI

---

## 🏹 Your Mission

Find and retrieve the flag stored in Secrets Manager.  
Flag format:

```
fsecss{...}
```

---

## 🧠 Hints 
- Always use `--endpoint-url=http://localhost:4566` for LocalStack.
