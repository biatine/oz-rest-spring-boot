FROM java:8
VOLUME /tmp
ADD target/oz-rest-spring-boot*.jar target/oz-rest-spring-boot.jar
RUN sh -c 'touch target/oz-rest-spring-boot.jar'
ENV JAVA_OPTS="-Xmx256m -Xms128m"
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar target/oz-rest-spring-boot.jar"]
