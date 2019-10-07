fargate-cicd-action
====================

A [Github Action](https://github.com/features/actions) for doing CI/CD with [fargate-cicd](https://github.com/turnerlabs/fargate-cicd) (Docker + AWS Fargate)


This action runs commands with shell expansion in a [fargate-cicd](https://github.com/turnerlabs/fargate-cicd) build container.


## Example usage

```yaml
- name: Login to ECR
  uses: turnerlabs/fargate-cicd-action@master
  env:
    AWS_DEFAULT_REGION: us-east-1
    AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
    AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
  with:
    args: login=$(aws ecr get-login --no-include-email) && eval "$login"

- name: Push image to ECR
  uses: turnerlabs/fargate-cicd-action@master
  with:
    args: docker push $IMAGE
    
- name: Deploy image to fargate
  uses: turnerlabs/fargate-cicd-action@master
  env:
    AWS_DEFAULT_REGION: us-east-1
    AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
    AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
    FARGATE_CLUSTER: myapp-dev
    FARGATE_SERVICE: myapp-dev
  with:
    args: fargate service deploy -i $IMAGE
```

See [cicd.yml](cicd.yml) for full CI/CD example.
