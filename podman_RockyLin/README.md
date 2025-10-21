# podman log

## Description

- podman is like docker, it runs in Rocky Linux, or redhat based distros to manage containers and its echosystem

### 1. Check existing pods and containers
- list pods: `podman pod ls`
- List all containers: `podman ps -a`

- to stop and remove the existing pod:
```bash
podman pod stop <podName_or_podId>
podman pod rm <podName_or_podId>
```
- same but forcing:
```bash
podman pod stop <podName_or_podId> --force
podman pod rm <podName_or_podId> --force
podman rm -f <container_name_or_id>
```

- yaml file in podman depends on file format (kube yaml formar or compose yaml format)

- `podman play kube` for Kubernetes YAML files
```bash
podman play kube your-file.yaml
```

- `podman-compose` for Docker Compose YAML files
If your YAML is a Docker Compose file (`docker-compose.yml`), you can use **Podman Compose**.

- Install Podman Compose:
```bash
pip3 install podman-compose
```

- to run the compose file:
```bash
podman-compose -f docker-compose.yml up -d
```

- kubernetes-style YAML file 

- File: *n8n.dev2.yml*
```yaml
apiVersion: v1
kind: Pod
metadata:
  name: n8n
spec:
  containers:
  - name: n8n
    image: n8nio/n8n:latest
    ports:
    - containerPort: 5678
      hostPort: 5678
    volumeMounts:
    - mountPath: /home/node/.n8n
      name: n8n-data
    env:
    - name: N8N_BASIC_AUTH_ACTIVE
      value: "true"
    - name: N8N_BASIC_AUTH_USER
      value: "admin"
    - name: N8N_BASIC_AUTH_PASSWORD
      value: "yourpassword"
  volumes:
  - name: n8n-data
    hostPath:
      path: /path/on/host/.n8n
      type: DirectoryOrCreate
```
- to run it `podman play kube`
