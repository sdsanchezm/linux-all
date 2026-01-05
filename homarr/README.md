# Homarr Log

### Docker install

```sh
sudo apt update && sudo apt upgrade -y
sudo apt install ca-certificates curl gnupg lsb-release -y
```
- adding gpg

    ```sh
    sudo mkdir -p /etc/apt/keyrings
    curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

    echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" \
    | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    ```

update and Install 
```sh
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y
```

Optionally: Enable and start Docker and check installation

```sh
sudo systemctl enable docker
sudo systemctl start docker
sudo docker run hello-world
```

Optionally: Add your user to the docker group (log out/in or run newgrp to apply):

```sh
sudo usermod -aG docker $USER
newgrp docker
```

Optionally: standalone docker-compose package

```sh
sudo apt install docker-compose -y
```

### Homarr

```sh
mkdir -p ~/homarr
cd ~/homarr
# add the docker file content
nvim docker-compose.yml
```
And run 
```sh
# start
docker-compose -f docker-compose.yml up

# or star sequentially
docker-compose -f docker-compose.yml -f docker-compose.prod.yml up

# stop
docker-compose -f docker-compose.yml down

# logs
docker-compose -f docker-compose.yml logs -f

# run specific file
docker-compose -f <path_to_your_docker_compose_file> <command>
```

- Note: Docker Compose will merge the configurations from both files if 2 files are provided in the arguments

## Examples docker files for homarr

Example 1

```yaml
version: '3.8'

services:
  homarr:
    image: ghcr.io/ajnart/homarr:latest
    container_name: homarr
    restart: unless-stopped
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Etc/UTC
    ports:
      - "7575:7575"
    volumes:
      - ./config:/app/data
```

Example 2

```yaml
version: "3.8"

services:
  homarr:
    image: ghcr.io/ajnart/homarr:latest
    container_name: homarr
    restart: unless-stopped
    volumes:
      - ./configs:/app/data/configs
      - ./icons:/app/public/icons
      - /var/run/docker.sock:/var/run/docker.sock
    ports:
      - "7575:7575"

```

And run: `docker-compose up -d`

