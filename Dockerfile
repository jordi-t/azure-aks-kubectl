FROM azuresdk/azure-cli-python:latest

RUN wget https://storage.googleapis.com/kubernetes-release/release/v1.8.3/bin/linux/amd64/kubectl -qO /usr/local/bin/kubectl
RUN chmod +x /usr/local/bin/kubectl

EXPOSE 8001
