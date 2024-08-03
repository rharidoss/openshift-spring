FROM registry.access.redhat.com/ubi8/ubi-minimal
ARG JAR_FILE=staging/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
