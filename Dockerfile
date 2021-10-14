FROM openjdk:8
ADD target/my-app-1.0-SNAPSHOT.jar my-app-1.0-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","spring-boot-react-mysql-0.0.1-SNAPSHOT.jar"]
