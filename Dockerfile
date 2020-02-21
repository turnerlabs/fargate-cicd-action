FROM quay.io/turner/fargate-cicd@sha256:c421a12a61f77d660f3b296e52a1efe63b56483d502c2432e7407365e3d8cff2
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
