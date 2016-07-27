# General
Jenkins server in FFA

# Run
1. `docker-compose up`
 * currently I have trouble with the file ownership in `/var/jenkins_home`
2. then manually go to `configure jenkins` and install `ssh slaves plugin`
3. configure the php7, add credentials (todo to be copied)
4. launch slave agent

# Back-up configs
```bash
docker-compose exec master cat /var/jenkins_home/nodes/php7/config.xml > jenkins_home/nodes/php7/config.xml
docker-compose exec master cat /var/jenkins_home/jobs/ffa-php-core/config.xml > jenkins_home/jobs/ffa-php-core/config.xml
docker-compose exec master cat /var/jenkins_home/users/shadi/config.xml > jenkins_home/users/shadi/config.xml

```
