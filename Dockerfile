FROM turnerlabs/fargate-cicd@sha256:cb951f9cfb87675ef8dac314001565976116b361054b500d278e475100d897a6
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
