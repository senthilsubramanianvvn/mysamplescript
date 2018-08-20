pipeline {
    agent any 
    stages {
        stage('jenuser1') { 
            steps {
                echo "Running build as jenuser1"
				sh 'bash ./wrapper jenuser1'
            }
        }
        stage('jenuser2') { 
            steps {
                        
                echo "Running build as jenuser2"
				sh 'bash ./wrapper jenuser2'
            
            }
        }
      }
}
