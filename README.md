# LOCALSTACK demo

## ドキュメント
https://docs.localstack.cloud/overview/

## 実行確認
S3 確認コマンド
```
aws --endpoint-url=http://localhost:4566 --region ap-northeast-1 --profile localstack s3 ls
```