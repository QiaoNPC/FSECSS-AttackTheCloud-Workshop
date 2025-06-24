# Lab 4 - Lambda

In this challenge, you will learn about **AWS Lambda** and how to interact with serverless functions.  
You will download and analyze Lambda code, then invoke the function to retrieve the flag.

---

## ☁️ What is Lambda?

AWS Lambda runs **functions as a service** — no server needed.  
Functions may contain vulnerabilities or hardcoded secrets.

---

## ⚠️ Why is this dangerous?

- Exposed Lambda code can reveal logic and secrets  
- Attackers can reverse engineer the code  
- Functions can be invoked to extract data

---

## 🏹 Your Mission

Download and analyze the Lambda function.  
Figure out how to invoke it to retrieve the flag.  
Flag format:

```
fsecss{...}
```

---

## 🧠 Hints
- Always use `--endpoint-url=http://localhost:4566` for LocalStack.
