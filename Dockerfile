FROM gradle:7.2-jdk11-openj9
WORKDIR /home/gradle
COPY . .
RUN gradle bootJar
ENTRYPOINT ["java","-jar","build/libs/spring-template-0.0.1-SNAPSHOT.jar"]