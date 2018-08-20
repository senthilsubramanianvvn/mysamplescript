pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
                echo "Running build as jenuser1"
				sh 'sudo -u jenuser1 ./runasuser.sh'
            }
        }
        stage('Test') { 
            steps {
                        
                echo "Running build as jenuser2"
				sh 'sudo -u jenuser2 ./runasuser.sh'
            
            }
        }
      }
}
