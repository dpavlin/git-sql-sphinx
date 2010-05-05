create: drop
	mysql -u root < git.sql

drop:
	echo "drop database git" | mysql -u root
