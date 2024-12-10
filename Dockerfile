FROM openjdk:8
EXPOSE 8080
ADD target/eduerp-backend.war eduerp-backend.war
ENTRYPOINT ["java","-war","/eduerp-backend.war"]