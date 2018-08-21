#!/usr/bin/groovy

@Library('github.com/fabric8io/fabric8-pipeline-library@master')

mavenNode {
    checkout scm
    container(name: 'maven') {
        sh 'mvn clean install'
    }
    container(name: 'docker') {
        sh 'docker build -t docker-registry.default.svc:5000/tobias-meyer-capgemini-stage/spring-test:latest .'
        sh 'docker push docker-registry.default.svc:5000/tobias-meyer-capgemini-stage/spring-test:latest'
    }
}