# FROM command to define the base image or parent image 
# Using Hub, From the image X , give me :tag 
FROM eclipse-temurin:17

#Meta data deffinition 
LABEL maintainer="ralshowmer@gmail.com" 

#Creating working directory inside the container 
WORKDIR /app

#Copy source/file/path from local system to destination/in/the/container with desired name
COPY target/springboot-docker-0.0.1-SNAPSHOT.jar /app/springboot-docker-demo.jar

#arguments to run the jar are seperated per double qoutes 
ENTRYPOINT ["java","-jar","springboot-docker-demo.jar"] 

 