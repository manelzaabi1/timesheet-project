<<<<<<< HEAD
FROM openjdk:8-jdk-alpine
EXPOSE 8082
ADD target/timesheet-devops-1.0.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
=======
FROM eclipse-temurin:17

WORKDIR /app

COPY . .

RUN ./mvnw clean install -DskipTests

CMD ["java", "-jar", "target/timesheet-devops-1.0.jar"]

>>>>>>> 94071185621e4c1a0b657b2542f3bac92e0f1b29
