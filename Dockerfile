# Använder en officiell Java-bild som bas
FROM openjdk:21-jdk-slim



# Skapar en arbetskatalog i containern där applikationen och filer ska köras
WORKDIR /Ninja-App

# Kopierar alla filer från din nuvarande mapp till arbetskatalogen /Ninja-App
COPY . /Ninja-App

# Kompilera Java-koden
RUN javac Main.java

# Kommando för att köra ditt program
CMD ["java", "Main"]
