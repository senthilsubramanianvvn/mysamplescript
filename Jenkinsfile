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
                                        remoteDirectory: '/tmp',
                                        execCommand: 'bash /tmp/runasuser.sh && uname -n'
                                    )
                                ],
                                transfers2: [
                                    sshTransfer(
                                        sourceFiles: 'script2.sh',
                                        remoteDirectory: '/tmp',
                                        execCommand: 'bash /tmp/script2.sh && uname -n'
                                    )
                                ],
                                transfers3: [
                                    sshTransfer(
                                        sourceFiles: 'script3.sh',
                                        remoteDirectory: '/tmp',
                                        execCommand: 'bash /tmp/script3.sh && uname -n'
                                    )
                                ]
                            )
                        ]
                    )
            }
        }
      }
}
