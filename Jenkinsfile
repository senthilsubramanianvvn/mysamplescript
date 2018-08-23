pipeline {
    agent any 
    stages {
            stage('OnTarget') {
            when {
                branch 'master'
            }
            steps {
                    sshPublisher(
                        failOnError: true,
                        continueOnError: false,
                        publishers: [
                            sshPublisherDesc(
                                configName: 'target',
                     //               username: "$USERNAME",
                                transfers: [
                                    sshTransfer(
                                        sourceFiles: 'runasuser.sh',
                                        remoteDirectory: '/tmp',
                                        execCommand: 'bash /tmp/runasuser.sh && uname -n'
                                    )
                                ]
                            )
                        ]
                    )
            }
        }
      }
}
