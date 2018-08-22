pipeline {
    agent any 
    stages {
        stage('jenuser1') { 
            steps {
                echo "Running build as jenuser1"
				sh 'sudo -u jenuser1 bash runasuser.sh'
            }
        }
        stage('jenuser2') { 
            steps {
                        
                echo "Running build as jenuser2"
				sh 'sudo -u jenuser2 bash runasuser.sh'
            
            }
        }
      }
}
