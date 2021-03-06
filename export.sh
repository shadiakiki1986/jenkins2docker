#!/bin/bash
# bash script for exporting from a running jenkins service (from the docker-compose.yml file)
# example files for my particular use case

if [[ -z "$1" ]]; then
  echo "Usage: export.sh jenkins_home"
  exit 1
fi

if [[ ! -d "$1" ]]; then
  echo "Inexistant target folder: '$1'"
  exit 1
fi

TARGET=$1
#------------------------
# now export the secrets, as referenced here http://stackoverflow.com/a/31672340/4126114
# but there is no docker-compose cp yet, as referenced here https://github.com/docker/compose/issues/3593
function grepCont() {
  docker ps|grep jenkins2docker_master
}
NCONT=``
if [ "$(grepCont|wc -l)" != "1" ]; then
  echo "Not one jenkins master found. Aborting"
  exit 1
fi
docker cp `grepCont|awk '{print $1}'`:/var/jenkins_home $TARGET
sudo chmod 775 -R $TARGET
