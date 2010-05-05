create: drop
	mysql -u root < git.sql
	./git-sql-insert.sh | mysql git
	./indexer.sh

drop:
	echo "drop database git" | mysql -u root
