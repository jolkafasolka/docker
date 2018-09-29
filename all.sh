#!/bin/bash
docker run -d --rm --name mysql -e MYSQL_ROOT_PASSWORD=jolka -v "dbPanda:/var/lib/mysql" mysql  &&
docker run -d --rm --name php -v "/c/Users/ASUS/fasolka:/app/fasolka" --link "mysql:db" -p "8080:80" "jolka/jolka_php" && 
docker run -d --rm --name pma  --link "mysql:db" -p "8081:80" "jolka/jolka_pma"