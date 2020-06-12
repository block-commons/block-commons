# block-commons

This site was built with Hugo 0.70.0.

To build static site

```no-highlight
$ hugo
```

To run dev server on <http://localhost:1313>

```no-highlight
$ hugo server -D --disableFastRender
```

---

## Suggested Production Deployment

This guide uses a clean installation of Ubuntu 18.04 hosted on a VPS. Ubuntu has been initialised with only a root user which is accessible via ssh.

### 1. Install software

Connect to the VPS as `root` and run the following commands to install software needed later in this guide.

```bash
apt update
apt install -y sudo nginx
apt-get install git
```

If you are asked to overwrite a file named `/etc/sudoers`, press "Y" to install the package maintainer's version.

At this stage you can verify nginx is installed correctly by entering your VSPs IP address into a web browser. The "Welcome to nginx" page should be loaded.

### 2. Create non-root user

Still connected as `root`, run the following command to create a new user. This example creates a user called `jamie`, but you can choose your own name.

```bash
adduser jamie
```

Enter a strong password and, optionally, fill in any of the additional information if you would like. This is not required and you can just hit ENTER in any field you wish to skip.

Enable usage of `sudo` for the new user.

```bash
usermod -aG sudo jamie
```

You can now disconnect from the `root` user, and it will not be used again during this guide.

### 3. Install hugo

Connect to the VPS as the newly created non-root user. We are now going to install [Hugo](https://gohugo.io/) version 0.55.6.

```bash
export VER="0.70.0"
wget https://github.com/gohugoio/hugo/releases/download/v${VER}/hugo_${VER}_Linux-64bit.deb
sudo dpkg -i hugo_${VER}_Linux-64bit.deb
```

If installation was successful, you should now be able to use the hugo command

```bash
hugo --help
```

### 4. Clone this repository

Still connected as the non-root user, clone this repository into a directory which can be served by nginx

```bash
sudo mkdir -p /var/www/block-commons
sudo chown -R $USER:$USER /var/www/block-commons
git clone https://github.com/block-commons/block-commons.git /var/www/block-commons
```

### 5. Build the static site

```bash
cd /var/www/block-commons
hugo
```

This should build the static site into a newly created directory named `public/`

### 6. Configure nginx

```bash
sudo cp /var/www/block-commons/nginx/default /etc/nginx/sites-available/default
sudo systemctl restart nginx.service
```

The block-commons website should now be loaded when you enter your VSPs IP address into a web browser.

### Additional setup

- [Disable ssh for root user](https://www.howtogeek.com/howto/linux/security-tip-disable-root-ssh-login-on-linux/)
- [Configure public key auth for your non-root user](https://www.shellhacks.com/ssh-login-without-password/)
- [Set up ufw to close unnecessary ports](https://hostadvice.com/how-to/how-to-configure-firewall-with-ufw-on-ubuntu-18/) (Remember to keep 80, 443 and 22 open)
- [Set up HTTPS](https://certbot.eff.org/lets-encrypt/ubuntubionic-nginx)

---

## Updating production deployment

To deploy the latest changes pushed to the master branch on GitHub, connect to the VPS as the non-root user and run the following commands

```bash
cd /var/www/block-commons
git pull
hugo
```
