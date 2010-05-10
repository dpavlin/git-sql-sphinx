all:
	echo "truncate log" | mysql git
	./git-sql-insert.sh | mysql git
	./indexer.sh

create:
	mysql -u root < git.sql

drop:
	echo "drop database git" | mysql -u root
