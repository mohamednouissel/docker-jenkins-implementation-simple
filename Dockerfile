# Utilisez une image de base appropriée pour Java
FROM openjdk:11

# Définissez le répertoire de travail à l'intérieur du conteneur
WORKDIR /app

# Copiez le fichier JAR de votre projet Spring (assurez-vous qu'il se trouve dans le même répertoire que le Dockerfile)
COPY target/docker-jenkins-implementation-simple.jar docker-jenkins-implementation-simple.jar

# Exposez le port sur lequel votre application Spring Boot écoute (par défaut, 8080)
EXPOSE 8080

# Commande pour démarrer votre application Spring Boot
CMD ["java", "-jar", "docker-jenkins-implementation-simple.jar"]
