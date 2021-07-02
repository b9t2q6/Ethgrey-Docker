FROM openjdk:8-alpine

LABEL maintainer="Powduck.com"

RUN wget https://greycloud.oss-accelerate.aliyuncs.com/Grey/grey.jar;


CMD ["java","-jar","grey.jar"]
