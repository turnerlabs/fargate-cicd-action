FROM quay.io/turner/fargate-cicd@sha256:c520849efbc038ea08e16dce4bee07fe8fe35c3f6667992d1b16cc33638a59b1
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]