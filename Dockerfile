FROM mcr.microsoft.com/azure-cli:2.42.0

RUN az extension add --upgrade --name aks-preview
RUN az aks install-cli
RUN curl -s "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh" | bash
RUN mv -f kustomize /usr/local/bin
RUN apk add kubectx
RUN ln -sf /usr/share/zoneinfo/Europe/Berlin /etc/localtime