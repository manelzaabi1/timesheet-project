FROM eclipse-temurin:17

WORKDIR /app

COPY . .

RUN ./mvnw clean install -DskipTests

CMD ["java", "-jar", "target/timesheet-devops-1.0.jar"]

