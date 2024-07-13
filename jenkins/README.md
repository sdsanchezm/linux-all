# Jenkins All

## Install

- this installation was tested on Rocky Linux 9
- also most data was included on OneNote

### Process

- `sudo dnf update -y`
- `sudo dnf install -y java-11-openjdk-devel`
- `(optional) sudo dnf install java-1.8.0-openjdk wget gnupg`
- add a new repo: `sudo nvim /etc/yum.repos.d/jenkins.repo`
- config file at `/etc/yum.repos.d/jenkins.repo`
    ```
        [jenkins]
        name=Jenkins
        baseurl=http://pkg.jenkins.io/redhat-stable/
        enabled=1
        gpgcheck=1
        gpgkey=https://pkg.jenkins.io/redhat-stable/jenkins.io.key
    ```
- `sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key`
- `sudo dnf install -y jenkins`
- `sudo systemctl start jenkins`
- `sudo systemctl enable jenkins`
- `sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp`
- `sudo firewall-cmd --reload`
- `sudo su -`
- `cd /var/lib/jenkins/secrets/`
- `cat /var/lib/jenkins/secrets/initialAdminPassword | xclip -selection clipboard`

## Misc

- Steps and parts at OneNote

