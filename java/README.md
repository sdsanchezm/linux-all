# Working with Java in linux

## Install OpenJDK 11

- `sudo dnf update`
- `sudo dnf install java-11-openjdk-devel`
- `java -version`

## Install Oracle Java

- get the rpm from: [here](https://www.oracle.com/java/technologies/downloads/)
- `sudo dnf localinstall jdk-11-linux-x64.rpm`
- `java -version`

## Select default java version on your system

- `sudo alternatives --config java`
- `java -version`

## Compile
- Generate the class
    - `javac Main.java`
- Run the class
    - `java Main`
    - `java Main.class`

## Maven

- `mvn --version`
- `sudo dnf install maven`
- `mvn archetype:generate -DgroupId=com.mycompany.app -DartifactId=my-app -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.4 -DinteractiveMode=false`
- `java -cp target/my-app-1.0-SNAPSHOT.jar com.mycompany.app.App`


## Misc

- [maven documentation](https://maven.apache.org/guides/getting-started/maven-in-five-minutes.html)
