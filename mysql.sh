#!/bin/bash
docker run -d --rm --name mysql -e MYSQL_ROOT_PASSWORD=jolka -v db-panda:/var/lib/mysql mysql