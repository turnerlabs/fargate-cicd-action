FROM ghcr.io/warnermedia/fargate-cicd:v1.0.1
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
