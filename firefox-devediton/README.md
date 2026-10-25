# personal steps to install firefox developer edition ubuntu

The most current and recommended method to install Firefox Developer Edition on Ubuntu is via the **official Mozilla APT repository**, which ensures automatic updates through the system package manager.

### Method 1: Official APT Repository (Recommended)
This method provides a clean installation that coexists with the stable Firefox version.

1.  **Install prerequisites and import the signing key:**
    ```bash
    sudo apt install curl ca-certificates gpg -y
    sudo install -d -m 0755 /etc/apt/keyrings
    curl -fsSL https://packages.mozilla.org/apt/repo-signing-key.gpg | sudo tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null
    ```

2.  **Add the Mozilla repository:**
    ```bash
    printf '%s\n' \
    'Types: deb' \
    'URIs: https://packages.mozilla.org/apt' \
    'Suites: mozilla' \
    'Components: main' \
    'Signed-By: /etc/apt/keyrings/packages.mozilla.org.asc' \
    | sudo tee /etc/apt/sources.list.d/mozilla.sources > /dev/null
    ```

3.  **Install Firefox Developer Edition:**
    ```bash
    sudo apt update
    sudo apt install firefox-devedition -y
    ```

### Method 2: Manual Installation (Tarball)
If you prefer not to add a new repository, you can manually extract the browser.

1.  **Download and extract:**
    ```bash
    wget -O ~/Downloads/firefox-developer.tar.bz2 "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=en-US"
    cd ~/Downloads
    tar -xf firefox-developer.tar.bz2
    sudo mv firefox /opt/firefox-developer
    ```

2.  **Create a symbolic link for terminal access:**
    ```bash
    sudo ln -s /opt/firefox-developer/firefox /usr/local/bin/firefox-dev
    ```

3.  **Create a desktop entry** (optional but recommended for menu visibility) by creating a file at `~/.local/share/applications/firefox-dev.desktop` with the appropriate desktop entry configuration.

### Method 3: Ubuntu Make
You can also use Ubuntu Make to install the developer tools.

```bash
sudo snap install ubuntu-make --classic
umake web firefox-dev
```

