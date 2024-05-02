# Springboot-Docker 
Reference for Springboot -Docker 


### Build
`docker build -t springboot-docker:0.1.RELEASE . ` 
Argument to build image from docker file 
`-t` is image name 
`:0.1.RELEASE` is the tag name 
`.` is for location of docker file 


### Display images
`docker images` 
 display the created images and their ids, tags, dates, sizes

### Run container using image
`docker run -p 8080:8080 -d springboot-docker`
run the image in a container using port mapping as HostPort:ContainerPort,
containers have their private network,
`-d` detach mood so it will run in background, 
followed by image name, which I created earlier,  
ctl+C to kill the docker instance = stop container,  
<< it returns id of container, we can use the first 4 digits,



### Displays running containers 
`docker ps`


### Display logs tail using first 4-digit of container
`docker logs -f de77`
tail the logs of container starting with de77

### Stop running container
`docker stop de77`
stop container with id de77, as it runs in detach mood 


### Validate running/stopped containers 
`docker ps`

### Docker Hub 
Repositories on docker hub are images like username\imageName 
cli login as: `docker login` then write username and password

###  Push to Docker Hub
Associate local image with repository
`docker tag springboot-docker dockonmoon/springboot-docker:0.1.RELEASE`

 Push the tagged image to my repo with tag release 
`docker push dockonmoon/springboot-docker:0.1.RELEASE`





