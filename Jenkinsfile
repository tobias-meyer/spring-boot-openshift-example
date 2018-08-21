#!/usr/bin/groovy

@Library('github.com/fabric8io/fabric8-pipeline-library@master')
mavenNode {
    checkout([$class: 'GitSCM', branches: [[name: '*/master']], userRemoteConfigs: [[credentialsId: 'cd-github', url: 'https://github.com/tobias-meyer/spring-boot-openshift-example.git']]])
    container(name: 'maven') {
        sh 'mvn clean install'
    }
    container(name: 'docker') {
        sh 'docker build -t docker-registry.default.svc:5000/tobias-meyer-capgemini-stage/spring-test:latest .'
        sh 'docker push docker-registry.default.svc:5000/tobias-meyer-capgemini-stage/spring-test:latest'
    }
}