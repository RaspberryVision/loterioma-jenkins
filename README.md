# Loterioma Jenkins

A repository containing docker conernner configurations for Jenkins. The container is also used to build Loterioma system components.

```
sudo docker run -d -p 5549:8080 -p 50000:50000 -v /var/www/html/respberryvision:/var/jenkins_home/workspace -v /var/applications/loterioma/jenkins:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):/usr/bin/docker jenkins/jenkins:lts
```

Todo:
1. Upload image to dockerhub
2. 