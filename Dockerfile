FROM openjdk:17-alpine
WORKDIR /app
COPY target/student-management-0.0.1-SNAPSHOT.jar .
EXPOSE 8089
CMD ["java", "-jar", "student-management-0.0.1-SNAPSHOT.jar"]
