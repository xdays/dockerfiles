# Github Runner

This dockerfile comes from [Running self-hosted GitHub Actions runners in your Kubernetes cluster
](https://sanderknape.com/2020/03/self-hosted-github-actions-runner-kubernetes/)

# Update by xdays

1. update to lateset runner version `2.263.0`
2. change to organization level runner auto registration

# Setup

```
docker run -d --name github-runner \
    -e RUNNER_NAME=xdays-runner \
    -e GITHUB_PAT=changeme
    -e GITHUB_OWNER=ethbyte  \
    xdays/github-runner
```

# Todo

-   build docker image from within conatiner
