FROM quay.io/turner/fargate-cicd
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]