FROM openjdk:8-jdk-buster AS build
WORKDIR /build
RUN git clone --single-branch --branch 2.0.0-beta.8 https://github.com/OpenAPITools/openapi-diff

RUN cd /build/openapi-diff && ./mvnw -V -B -ff -P docker package -q

FROM cimg/node:14.21.1
WORKDIR /app

COPY --from=build /build/openapi-diff/cli/target/openapi-diff-cli-*-all.jar /app/openapi-diff.jar
RUN sudo apt update && sudo apt install -y default-jre

