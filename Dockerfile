FROM openjdk:8
ADD target/spring-boot-react-mysql-0.0.1-SNAPSHOT.jar spring-boot-react-mysql-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","spring-boot-react-mysql-0.0.1-SNAPSHOT.jar"]
