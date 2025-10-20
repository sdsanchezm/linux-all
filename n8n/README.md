# n8n log

### n8n using docker (tested on rpi5 8gb)

- Update `sudo apt update && sudo apt upgrade -y`
- Install 
```sh
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER
```

- check docker version `docker --version`
- Optional, enable docker `systemctl status docker` and `sudo systemctl enable docker`
- install oackages required:
```sh
sudo apt install -y python3-pip
pip3 install docker-compose
```
- check: `docker-compose --version`

### install n8n using a yaml file
- create folders: `mkdir ~/n8n && cd ~/n8n`
- create the data folder: `mkdir n8n-data` (inside)
- edit the yaml file: `nvim docker-compose.yml`

- Example1 n8n yaml file (must update ip or serverName, <localhost>):

   ```yaml
   version: '3.8'
   services:
     n8n:
       image: n8nio/n8n:latest
       ports:
         - "5678:5678"
       environment:
         - N8N_HOST=0.0.0.0
         - N8N_PORT=5678
         - N8N_PROTOCOL=http
         - N8N_EDITOR_BASE_URL=http://<localhost>:5678
       volumes:
         - ./n8n-data:/home/node/.n8n
       restart: unless-stopped
   volumes:
     n8n-data:
   ```
- Example2 n8n yaml file (must update ip or serverName, <localhost>):

```yaml
version: "3.8"

services:
  n8n:
    image: docker.n8n.io/n8nio/n8n
    restart: always
    ports:
      - "5678:5678"
    environment:
      - N8N_HOST=${N8N_HOST:-localhost}
      - N8N_PORT=5678
      - N8N_PROTOCOL=${N8N_PROTOCOL:-http}
      - N8N_USER_MANAGEMENT_DISABLED=true
      - NODE_ENV=production
      - WEBHOOK_URL=${N8N_WEBHOOK_URL:-http://localhost:5678/}
    volumes:
      - n8n_data:/home/node/.n8n

volumes:
  n8n-data:
```

- Details of the yaml file:
  - using n8n image
  - port 5678 (host) maps to 5678 in container
  - Persists n8n data `n8n-data` directory
  - Sets environment variables for n8n to be accessible externally

- Run `docker-compose up -d`
- check `docker ps`
- navigate to `http://<localhost>:5678`

### potential config

- n8n with HTTPS
  - enable HTTPS > using a reverse proxy like Nginx or Caddy with Let's Encrypt
  - This requires additional setup:
    - domain name
    - port forwarding on your router

- update n8n container to the latest version:
```sh
docker-compose pull
docker-compose up -d
```

- back up `n8n-data` directory
```bash
tar -czvf n8n-backup.tar.gz ~/n8n/n8n-data
```

### potential issues:

- ports issues:
  change port in host in `n8n.dev.yml` file to for example `8080:5678`

- check logs if required
```bash
docker logs <containerId>
```
