FROM eclipse-temurin:17-jre

# Mappánk a konténeren belül
WORKDIR /app

# A Maven által készített jar neve a README alapján:
# target/cubix-first-homework-0.0.1-SNAPSHOT.jar
ARG JAR_FILE=target/cubix-first-homework-0.0.1-SNAPSHOT.jar

# Másoljuk be a jar-t app.jar néven
COPY ${JAR_FILE} app.jar

EXPOSE 8080

# Indítsuk az alkalmazást
ENTRYPOINT ["java", "-jar", "app.jar"]
