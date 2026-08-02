# Define a default value so it's not empty if the builder fails to provide it
#FROM eclipse-temurin:24.0.2_12-jdk-noble AS builder

#WORKDIR /app
#
#COPY . .
#RUN chmod +x gradlew
#
#RUN ./gradlew downloadRepos
#
#RUN ./gradlew installDist
#
#FROM eclipse-temurin:25.0.3_9-jre-alpine
#
## @TODO: https://github.com/GoogleCloudPlatform/microservices-demo/issues/2517
## Download Stackdriver Profiler Java agent
## RUN mkdir -p /opt/cprof && \
##     wget -q -O- https://storage.googleapis.com/cloud-profiler/java/latest/profiler_java_agent_alpine.tar.gz \
##     | tar xzv -C /opt/cprof && \
##     rm -rf profiler_java_agent.tar.gz
#
#WORKDIR /app
#COPY --from=builder /app .
#
#EXPOSE 9555
#ENTRYPOINT ["/app/build/install/hipstershop/bin/AdService"]
