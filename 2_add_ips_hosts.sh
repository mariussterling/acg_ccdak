i=1
while read ip
do
	echo "$ip zoo$i" >> __hosts
	i=$((i + 1))
done < __private_ips.txt

while read ip
do
	ssh -i acg_aws.pem ubuntu@$ip "sudo tee -a" < $1
done < aws_servers.txt
