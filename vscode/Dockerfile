FROM python:2.7
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg |  apt-key add - && \
    apt-get update && \
    apt-get install -y git build-essential nodejs yarn libx11-dev libxkbfile-dev libsecret-1-dev && \
    rm -rf /var/lib/apt/lists/* && \
    git clone https://github.com/microsoft/vscode.git /opt/vscode && \
    cd /opt/vscode/ && \
    yarn

RUN yarn global add pm2

COPY ecosystem.config.js /opt/vscode/

WORKDIR /opt/vscode
CMD ["pm2", "start", "--no-daemon"]
