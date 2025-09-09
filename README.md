# 🌍 Static Site Automation

This project demonstrates how to **automate static website deployment** using:
- **AWS S3** for hosting
- **CloudFront** for CDN
- **Shell script** for automation
- **CloudFormation** for infrastructure as code

---

## 🚀 Features
- Infrastructure defined via **CloudFormation**
- Auto-deployment with `deploy.sh`
- CloudFront invalidation for zero-cache issues
- Simple static site (`index.html`, `about.html`, `style.css`)

---

## 🔧 Prerequisites
- AWS CLI installed & configured
- CloudFormation permissions
- S3 + CloudFront permissions

---

## ⚡ Usage

### 1. Deploy Infrastructure
```bash
aws cloudformation deploy \
  --template-file aws-cloudformation.yml \
  --stack-name static-site-stack
```

### 2. Deploy Website
```bash
./deploy.sh
```
