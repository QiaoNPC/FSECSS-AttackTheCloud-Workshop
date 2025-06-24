# Attack the Cloud: AWS Security Workshop

A practical security workshop on common AWS misconfigurations and how attackers exploit them.

In this workshop, you will learn how to identify and exploit real-world flaws in AWS setups:

✅ Insecure S3 buckets  
✅ Bucket versioning abuse  
✅ Leaked secrets in Secrets Manager  
✅ Vulnerable Lambda functions  

---

## 🚀 Workshop Setup

- [Docker & Docker Compose](https://malfunction-grinds.medium.com/how-to-install-docker-and-docker-compose-on-kali-linux-2ecd69c67ee9)
- [Kali Linux](https://www.kali.org/)
- AWS CLI (`awscli`)  
  Install:  
  ```bash
  sudo apt install awscli
  ```

---

## 🔥 Running the workshop environment

Clone this repo:

```bash
git clone https://github.com/QiaoNPC/FSECSS-AttackTheCloud-Workshop.git
cd FSECSS-AttackTheCloud-Workshop
chmod +x init-scripts/*
sudo docker-compose up
```

---

## 🏹 Labs

| Lab | Topic                         | Link                |
|-----|-------------------------------|---------------------|
| 1   | Insecure S3 Buckets            | [labs/lab1](labs/lab1) |
| 2   | Bucket Versioning              | [labs/lab2](labs/lab2) |
| 3   | Secrets Manager                | [labs/lab3](labs/lab3) |
| 4   | Lambda Functions               | [labs/lab4](labs/lab4) |

---

Happy hacking! 🎯  
