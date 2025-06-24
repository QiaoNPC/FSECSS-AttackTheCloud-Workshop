# Lab 1 - Insecure S3 Buckets

In this challenge, you will learn about **public S3 buckets** and how misconfigurations can lead to data exposure.

---

## ☁️ What is an "Insecure Bucket"?

Amazon S3 buckets can store files (objects).  
If the bucket ACL or policy allows `Everyone` (anonymous users) to read it, it becomes **public** — and anyone can list, download, or even upload data.

---

## ⚠️ Why is this dangerous?

- Anyone on the internet can discover public buckets  
- Sensitive files may be exposed (credentials, flags, backups, PII)  
- Attackers use tools like `awscli`, `s3scanner`, `truffleHog` to find and loot data  

---

## 🏹 Your Mission

Find and download the flag from the **insecure S3 bucket**.
Flag format:

```
fsecss{...}
```

---

## 🧠 Hints

- You do **NOT** need any credentials — use `--no-sign-request`  
- The flag will be in a file inside the bucket  
- Always use `--endpoint-url=http://localhost:4566` for LocalStack.
