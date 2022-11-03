FROM ghcr.io/warnermedia/fargate-cicd:v0.12.1
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
