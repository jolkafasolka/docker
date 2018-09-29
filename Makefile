all: mysql php pma

mysql:
	docker run -d --rm --name mysql -e MYSQL_ROOT_PASSWORD=jolka -v db-panda:/var/lib/mysql mysql
php:
	docker run -d --rm --name php -v "../fasolka:/app/fasolka" --link "mysql:db" -p "8080:80" "jolka/jolka_php"
pma:
	docker run -d --rm --name pma  --link "mysql:db" -p "8081:80" "jolka/jolka_pma"

