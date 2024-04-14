kubectl create ns kustomize-docs

helm install -n kustomize-docs kustomize-docs ./deployment/docdaemon -f deployment/kustomize-docs.yaml

helm upgrade -n kustomize-docs kustomize-docs ./deployment/docdaemon -f deployment/kustomize-docs.yaml