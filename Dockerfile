FROM quay.io/turner/fargate-cicd@sha256:008a6a785d3130f6259ac6708bfe951859957b569b87c20ee8010b929bdf309a
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
