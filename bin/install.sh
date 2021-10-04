echo "####################### Installing ansible dependencies ##############################\n\n"

sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install --yes ansible git curl

echo "################ updating help binary 'vn' for getting deploy command ################\n\n"

sudo curl -qL https://git.io/JYnsz -o /usr/local/bin/vh
sudo chmod +x /usr/local/bin/vh

echo "################### cloning virtualhost with MultiPHP repo ###########################"

rm -rf ~/vh
git clone https://github.com/naresh335/ansible-virutalhost-multiPHP.git ~/vh
echo "\n\ncopy & modify this command or run '$(tput bold)vh -h$(tput sgr0)' for getting this command during any session\n\n"
echo 'ansible-playbook ~/vh/setup.yaml -K --extra-vars "php_version=7.3 user=dev directory=projects url=app.test"'
cd ~/vh && exec ${SHELL}
