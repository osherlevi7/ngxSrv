node { 
    def app 

    stage('clone repository'){
        checkouts scm
    }

    stage('Build image'){
        app = docker.build("nodeapp, haproxy")
    }

    stage('Test image'){
        app.inside { 
            sh 'echo "Tsest"'
        }
    }

    stage('Push image'){
        docker.withRegistry('https://registry.hub.docker.com, 'docker-hub-credentials'')
        // Push to Docker Hub with the build number.
        app.push("${env.BUILD_NUMBER}")
        // Push to the latest tag.
        app.push("latest")
    }
}