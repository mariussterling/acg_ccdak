while read ip
do 
	ssh -i acg_aws.pem ubuntu@$ip 'bash -s' < $1
	echo $ip
done < aws_servers.txt
