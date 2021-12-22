## Apache Virutalhost configuration with multi PHP

### All in One Installation script

```sh
curl -L https://git.io/JYnOL | sh
```

### Updating this script 

```sh
vh -u
```

### Or if you want to go manual, please follow the instructions below

#### Install ansible as its dependent on ansible 
  
```sh
sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install --yes wget ansible
```

#### Clone this repo
```sh
git clone https://github.com/naresh335/ansible-virutalhost-multiPHP.git ~/vh 
```

#### Install Help utility 'vh -h'
```sh
sudo wget https://git.io/JYnsz -O /usr/local/bin/vh
```

#### Update php_version, user, directory, url according to your requirements
```sh
ansible-playbook ~/vh/setup.yaml -K --extra-vars "php_version=7.3 user=dev directory=projects url=app.test"
```
> Note: make sure to update `php_version,user,directory,url` accordingly

directory variable should expand in this case from **projects** -> */home/dev/projects*

Examples for `directory` variable.

| if `directory` = | Full path used in installation |
| ------ | ------ |
| projects | */home/dev/projects* |
| Workspace | */home/dev/Workspace* |
| Documents/public_html | */home/dev/Documents/public_html* |

#### logs directory
| if `directory` = | Full path for logs dir |
| ------ | ------ |
| projects | */home/dev/projects/logs* |
| Workspace | */home/dev/Workspace/logs* |
| Documents/public_html | */home/dev/Documents/public_html/logs* |

##### since root access is required for installation authenticate installtion with your system password

##### let the installation complete, you'll see path to your project directory at the end of installation.
