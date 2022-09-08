FROM mcr.microsoft.com/azure-cli:latest

RUN az extension add --upgrade --name aks-preview
RUN az aks install-cli
RUN curl -s "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh" | bash
RUN mv -f kustomize /usr/local/bin
RUN apk add kubectx
