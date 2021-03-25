### Install ansible as its dependent on ansible 
  
```sh
sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
```

#### Clone this repo
```sh
git clone https://gitlab.com/ipclicks/ansible-vh.git
```

#### cd into cloner directory and update phpversion, user, url according to your requirements
```sh
cd ansible_vh && ansible-playbook setup.yaml -K --extra-vars "php_version=7.3 user=dev22 url=app.test"
```
> Note: make sure to update `php_version,user,url` accordingly

##### since root access is required for installation authenticate installtion with your system password

##### let the installation complete, you'll see path to your project directory at the end of installation.
