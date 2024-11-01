FROM eclipse-temurin:17
WORKDIR workspace
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} build/libs/config-service.jar
ENTRYPOINT ["java", "-jar", "config-service.jar"]