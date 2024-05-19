# Usar una imagen base de Tomcat con Java 17
FROM tomcat:9.0.89-jdk17

# Mantener el autor
LABEL maintainer="jeremy.arias@epn.edu.ec"

# Establecer el directorio de trabajo
WORKDIR /usr/local/tomcat

# Copiar el archivo WAR al directorio webapps de Tomcat
# Asegúrate de usar la ruta relativa correcta si estás ejecutando el comando desde otra ubicación
COPY target/MA_Hotel_Reservas-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/MA_Hotel_Reservas.war

# Exponer el puerto 8080
EXPOSE 8080

# Iniciar Tomcat
CMD ["catalina.sh", "run"]
