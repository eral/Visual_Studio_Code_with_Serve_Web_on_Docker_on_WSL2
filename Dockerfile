FROM mcr.microsoft.com/devcontainers/base:jammy

USER vscode
WORKDIR /home/vscode
RUN curl -LJO 'https://code.visualstudio.com/sha/download?build=stable&os=cli-alpine-x64' \
    && tar -xvf vscode_cli_alpine_x64_cli.tar.gz \
    && sudo cp code /usr/local/bin \
    && rm vscode_cli_alpine_x64_cli.tar.gz
WORKDIR /workspaces
CMD code serve-web --without-connection-token --accept-server-license-terms --log off --host=0.0.0.0 --port 8000

