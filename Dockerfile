
# Usar la imagen base de OpenJDK 17
FROM openjdk:17-jdk-slim

# Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar el archivo JAR desde el directorio de construcción local al contenedor
COPY target/mi-api2-0.0.1-SNAPSHOT.jar /app/mi-api2.jar

# Exponer el puerto en el que la aplicación se ejecutará
EXPOSE 8081

# Comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "/app/mi-api2.jar"]
  