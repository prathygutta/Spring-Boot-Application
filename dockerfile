FROM openjdk
VOLUME /tmp
ENV JAR_FILE
RUN echo "Jar file name :" ${JAR_FILE}
COPY target/rr-spring-boot-docker-0.1.0.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]