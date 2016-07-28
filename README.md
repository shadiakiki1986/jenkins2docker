# General
Jenkins server in FFA

# Usage
To launch jenkins
1. place in the `jenkins_home` folder the desired initial contents for `/var/jenkins_home`
 * These will be copied into `/usr/share/jenkins/ref`, 
 * which is what jenkins will copy into `/var/jenkins_home` upon its boot
2. `docker-compose up -d --build`

To stop the instance, along with taking down the persistent volume:
* `docker-compose down -v`

To export some of the config files (check `export.sh` script for which files exactly I chose to export)
`bash export.sh jenkins_home`

# License
Full text [here](LICENSE)
<a href="http://www.wtfpl.net/"><img
   src="http://www.wtfpl.net/wp-content/uploads/2012/12/wtfpl-badge-4.png"
   width="80" height="15" alt="WTFPL" /></a>

