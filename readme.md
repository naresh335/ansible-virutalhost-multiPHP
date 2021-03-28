### Apache Virutalhost installation with multi PHP

#### Install ansible as its dependent on ansible 
  
```sh
sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install --yes ansible
```

#### Clone this repo
```sh
git clone https://gitlab.com/user445/ansible-vh.git
```

#### cd into cloner directory and update phpversion, user, url according to your requirements
```sh
cd ansible-vh && ansible-playbook setup.yaml -K --extra-vars "php_version=7.3 user=dev directory=projects url=app.test"
```
> Note: make sure to update `php_version,user,directory,url` accordingly

directory variable should expand in this case from projects -> */home/dev/projects*

Examples for directory variable.

| project | Full path used in installation |
| ------ | ------ |
| Apps | */home/dev22/Apps* |
| Workspace | */home/dev22/Workspace* |
| Documents/public_html | */home/dev22/Documents/public_html* |


##### since root access is required for installation authenticate installtion with your system password

##### let the installation complete, you'll see path to your project directory at the end of installation.
