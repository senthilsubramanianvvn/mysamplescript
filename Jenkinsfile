pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
                echo "Running build as jenuser1"
				sh 'bash ./runasuser.sh jenuser1'
            }
        }
        stage('Test') { 
            steps {
                        
                echo "Running build as jenuser2"
				sh 'bash ./runasuser.sh jenuser2'
            
            }
        }
      }
}
