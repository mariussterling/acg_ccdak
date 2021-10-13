source execute_sh_file_on_servers.sh 'wget -qO - https://packages.confluent.io/deb/6.2/archive.key | sudo apt-key add - |
sudo add-apt-repository "deb [arch=amd64] https://packages.confluent.io/deb/6.2 stable main" |
sudo apt-get update && sudo apt-get install -y openjdk-8-jdk confluent-community-2.13'
