# Imagen base con Java 17 y Maven
FROM maven:3.9.0-eclipse-temurin-17

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar todo el proyecto al contenedor
COPY . .

# Construir la aplicación con Maven
RUN ./mvnw clean package -DskipTests

# Exponer el puerto 8080 (Spring Boot)
EXPOSE 8080

# Iniciar la aplicación usando el JAR generado
CMD ["java", "-jar", "target/cloudapi-0.0.1-SNAPSHOT.jar"]