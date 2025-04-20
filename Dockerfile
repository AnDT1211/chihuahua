# Use a minimal JDK runtime
FROM eclipse-temurin:17-jre-alpine

# Set app directory
WORKDIR /app

# Copy the jar file
COPY target/chihuahua-0.0.1-SNAPSHOT.jar chihuahua-0.0.1-SNAPSHOT.jar

# Expose port
EXPOSE 8080

# Run the Spring Boot app
ENTRYPOINT ["java", "-jar", "chihuahua-0.0.1-SNAPSHOT.jar"]
