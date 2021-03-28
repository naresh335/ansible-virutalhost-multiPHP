echo "####################### Installing ansible dependencies ##############################"

sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install --yes ansible

echo "################ updating help binary 'vn' for getting deploy command ################"

sudo cp ./vn /usr/local/bin/vn

echo "################### cloning virtualhost with MultiPHP repo ###########################"

git clone https://gitlab.com/user445/ansible-vh.git ~/vh

echo "copy & modify this command to create virtual host \n\n"

echo 'cd ~/vh && ansible-playbook setup.yaml -K --extra-vars "php_version=7.3 user=dev directory=projects url=app.test'

cd ~/vh && exec ${SHELL}
