FROM maven:3-eclipse-temurin-21 AS build
COPY .. /wisdom-book/
WORKDIR /wisdom-book
RUN mvn clean package -DskipTests

FROM eclipse-temurin:21
COPY --from=build wisdom-book/target/book-1.0.jar book.jar
EXPOSE 8090
ENTRYPOINT ["java","-jar","/book.jar"]

# -------------------------------------
#   Following commands build a docker image
#   and run a container of the image
# -------------------------------------

# docker build -t wisdom-book .
# docker run --name wisdom-book-container -p 51000:8090 -d wisdom-book

