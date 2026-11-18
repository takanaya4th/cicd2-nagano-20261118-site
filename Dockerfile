# Docker Hub の回数制限を避けるため、ECR Public のイメージを使う
FROM public.ecr.aws/nginx/nginx:stable-alpine

COPY nginx/default.conf /etc/nginx/conf.d/default.conf
COPY html/ /usr/share/nginx/html/

EXPOSE 80
