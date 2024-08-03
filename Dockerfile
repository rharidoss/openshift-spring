FROM registry.access.redhat.com/ubi8/ubi-minimal
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
ARG JAR_FILE=staging/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
