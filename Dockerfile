FROM maven:3.8.3-openjdk-17 AS builder
WORKDIR /home/nidhi
COPY . .
RUN mvn clean package
RUN ls target/

FROM tomcat:jre8-temurin-focal AS deploy
COPY --from=builder /home/nidhi/target/*.war /usr/local/tomcat/webapps
