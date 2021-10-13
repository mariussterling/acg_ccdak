if [ -f "$1" ]; then
	while read ip
	do 
		ssh -i acg_aws.pem ubuntu@$ip 'bash -s' < $1
	done < aws_servers.txt
else
	while read ip
	do
		ssh -i acg_aws.pem ubuntu@$ip $1
	done < aws_servers.txt
fi
