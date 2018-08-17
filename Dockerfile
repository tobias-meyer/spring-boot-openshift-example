FROM openjdk:8-alpine
COPY target/*.jar /usr
EXPOSE 8081
ENTRYPOINT ["sh", "-c", "cd /usr && exec java -jar /usr/*.jar"]