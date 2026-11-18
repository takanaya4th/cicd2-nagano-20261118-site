# cicd2-nagano-20261118-site

ごりらCI/CD 課題2。deploy ブランチにマージすると、CodePipeline が CodeBuild でイメージを作って ECR に push し、ECS（Fargate）にデプロイする。

- `Dockerfile`：Nginx に設定と HTML をコピーする
- `nginx/default.conf`：Nginx の設定（`/health` はヘルスチェック用）
- `html/index.html`：表示用の HTML
- `buildspec.yml`：CodeBuild の手順（ビルド → ECR へ push → `imagedefinitions.json` を出す）
