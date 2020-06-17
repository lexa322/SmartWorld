#!/bin/bash
printf 'Select item: \n'
printf '1 - start all containers: \n'
printf '2 - stop all containers: \n'
printf '3 - build containers: \n'
printf '4 - login to frontend \n'
printf '5 - login to db \n'
printf '6 - login to backend \n'

printf 'Item: '
while true; do
read x

    case $x in
     1)
          echo "Start......"
	  cd ~/docker_project
	  docker-compose up -d ; sleep 7 ; docker exec -ti backend curl -X PUT -d @/var/www/html/php-app.json --unix-socket /var/run/control.unit.sock  http://localhost/config/
          break
          ;;
     2)
          echo "Stop......"
	  cd ~/docker_project
	  docker-compose stop
          break
          ;;
     3)
          echo "Build......"
	  cd ~/docker_project
	  docker-compose build
          break
          ;; 
     4)
          echo "Login......"
	  docker exec -ti frontend /bin/bash
          break
          ;; 
     5)
          echo "Login......"
	  docker exec -ti db /bin/bash
          break
          ;; 
     6)
          echo "Login......"
	  docker exec -ti backend /bin/bash
          break
          ;; 

     *)
          echo "Please, select item:"
          ;;
    esac
done