# Lab 2 - Bucket Versioning

In this challenge, you will learn about **S3 bucket versioning** and how old versions of sensitive files can remain accessible even after being "deleted."

---

## ☁️ What is "Bucket Versioning"?

S3 supports **versioning** — each time you update an object, the old version is kept.  
If versioning is not properly managed, attackers can retrieve old versions of sensitive files.

---

## ⚠️ Why is this dangerous?

- "Deleted" or replaced files may still be accessible  
- Old secrets, credentials, or flags can be recovered  
- Attackers can list and download older versions

---

## 🏹 Your Mission

Find and download an **older version** of `flag.txt`.  
Flag format:

```
fsecss{...}
```

---

## 🧠 Hints
- The bucket name is `fsecss-bucket`  
- You do **NOT** need any credentials — use `--no-sign-request`  
- Always use `--endpoint-url=http://localhost:4566` for LocalStack.
