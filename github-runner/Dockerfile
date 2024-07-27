FROM ubuntu:22.04

ARG GITHUB_RUNNER_VERSION="2.318.0"

ENV RUNNER_NAME "runner"
ENV GITHUB_PAT ""
ENV GITHUB_OWNER ""
ENV RUNNER_WORKDIR "_work"
ENV RUNNER_ALLOW_RUNASROOT 1

RUN apt-get update \
    && apt-get install -y \
    curl sudo git jq \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /root

RUN curl -Ls https://github.com/actions/runner/releases/download/v${GITHUB_RUNNER_VERSION}/actions-runner-linux-x64-${GITHUB_RUNNER_VERSION}.tar.gz | tar xz \
    && sudo ./bin/installdependencies.sh

COPY --chown=root:root entrypoint.sh ./entrypoint.sh
RUN sudo chmod u+x ./entrypoint.sh

ENTRYPOINT ["/root/entrypoint.sh"]
