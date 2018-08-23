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
     //                             username: "vijay",
                                transfers: [
                                    sshTransfer(
                                        sourceFiles: 'runasuser.sh',
                                        remoteDirectory: '/tmp/script1',
                                        execCommand: 'sudo -u vijay bash /tmp/script1/runasuser.sh'
                                    ),
                                    sshTransfer(
                                        sourceFiles: 'script2.sh',
                                        remoteDirectory: '/tmp/script2',
                                        execCommand: 'sudo -u senthil bash /tmp/script2/script2.sh && uname -n'
                                    ),
                                    sshTransfer(
                                        sourceFiles: 'script3.sh',
                                        remoteDirectory: '/tmp/script3',
                                        execCommand: 'sudo -u deploy bash /tmp/script3/script3.sh && uname -n'
                                    )
                                ]
                            )
                        ]
                    )
     }
                
        }
      }
}
