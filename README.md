# General
Jenkins server in FFA

# Run
`docker-compose up`
then manually go to `configure jenkins` and install `ssh slaves plugin`

# Back-up configs
```bash
docker-compose exec master cat /var/jenkins_home/nodes/php7/config.xml > jenkins_home/nodes/php7/config.xml
docker-compose exec master cat /var/jenkins_home/jobs/ffa-php-core/config.xml > jenkins_home/jobs/ffa-php-core/config.xml
docker-compose exec master cat /var/jenkins_home/users/shadi/config.xml > jenkins_home/users/shadi/config.xml

```
