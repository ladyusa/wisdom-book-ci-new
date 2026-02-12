pipeline {
     agent any
     stages {
          stage('Source') {
               steps {
                    git branch: 'main',
                        url: 'https://github.com/ladyusa/wisdom-book'
               }
          }
          stage('Test') {
               steps {
                    echo 'mvn test'
               }
          }
          stage('Build') {
               steps {
                    sh 'mvn package -DskipTests'
               }
          }
          stage('Deploy') {
               steps {
                    sh 'java -jar ./target/book-1.0.jar'
               }
          }
     }
}
