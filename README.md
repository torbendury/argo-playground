# ArgoCD playground repo

🚧🚧🚧 Construction only! 🚧🚧🚧

Playground repository made for tinkering around with ArgoCD. Deployed locally to minikube via Terraform.

- Start out with `minikube start` to get a local cluster going
- Create gitops repo (the one you're looking at, duh)
- Use dummy app (nginx, push with different tag to own registry like `docker.io/torbendury/nginx:latest`)

## Repo contents

- Minimal Terraform code needed to install basic argo into minikube
- [Deployment manifests](my-app/) for example app
- [GitOps manifest](1-example/) for argo to watch
