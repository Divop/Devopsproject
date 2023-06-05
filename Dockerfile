FROM openjdk:17-jdk-slim

RUN mkdir minecraft

WORKDIR /minecraft

COPY server.jar .
COPY eula.txt .

EXPOSE 25565

CMD ["java", "-Xmx1G", "-jar", "server.jar"]
