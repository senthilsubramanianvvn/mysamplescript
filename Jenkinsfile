pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
                echo "Running build as jenuser1"
				sh './wrapper jenuser1'
            }
        }
        stage('Test') { 
            steps {
                        
                echo "Running build as jenuser2"
				sh './wrapper jenuser2'
            
            }
        }
      }
}
