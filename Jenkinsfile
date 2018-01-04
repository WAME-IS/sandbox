node {
    stage('preparation') {
        // Checkout the master branch of the WAME IS sandbox repository
        git branch: 'master', url: 'https://github.com/WAME-IS/sandbox.git'
    }
    stage("composer_install") {
        // Run `composer install` as a shell script
        sh 'composer install'
    }
}
