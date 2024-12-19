FROM openjdk:11
# CMD rm -rf target/*.jar
ARG JAR_FILE=target/*.jar
CMD ls -ltrh ${JAR_FILE}
# COPY ${JAR_FILE} app.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
