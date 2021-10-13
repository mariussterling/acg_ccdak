awk -v c=$1 'NR==c { print $0}' aws_servers.txt
