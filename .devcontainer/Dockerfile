# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.202.5/containers/ubuntu/.devcontainer/base.Dockerfile

# [Choice] Ubuntu version (use hirsuite or bionic on local arm64/Apple Silicon): hirsute, focal, bionic
ARG VARIANT="hirsute"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends build-essential \
    python3.8 python-is-python3 python3-pip \
    gnupg software-properties-common curl apt-transport-https ca-certificates

WORKDIR /workspaces

RUN curl -sSL https://sdk.cloud.google.com > /tmp/install.sh && bash /tmp/install.sh --install-dir=/workspaces --disable-prompts

RUN echo "" >> /home/vscode/.bashrc
RUN echo "# The next line updates PATH for the Google Cloud SDK." >> /home/vscode/.bashrc
RUN echo "if [ -f '/workspaces/google-cloud-sdk/path.bash.inc' ]; then . '/workspaces/google-cloud-sdk/path.bash.inc'; fi" >> /home/vscode/.bashrc
RUN echo "" >> /home/vscode/.bashrc
RUN echo "# The next line enables shell command completion for gcloud." >> /home/vscode/.bashrc
RUN echo "if [ -f '/workspaces/google-cloud-sdk/completion.bash.inc' ]; then . '/workspaces/google-cloud-sdk/completion.bash.inc'; fi" >> /home/vscode/.bashrc

ENV PATH $PATH:/workspaces/google-cloud-sdk/bin
ENV GOOGLE_APPLICATION_CREDENTIALS /workspaces/bq-testing/credentials.json 
ENV DBT_PROFILES_DIR /workspaces/bq-testing/

COPY requirements.txt /tmp/pip-tmp/
RUN pip3 --disable-pip-version-check --no-cache-dir install -r /tmp/pip-tmp/requirements.txt \
    && rm -rf /tmp/pip-tmp
