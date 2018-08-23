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
                                        execCommand: 'bash /tmp/scipt1/runasuser.sh && uname -n'
                                    )
                                ]
                            )
                        ]
                    )
            }
                // Second script
              
                sleep 30
           steps {
                    sshPublisher(
                        failOnError: true,
                        continueOnError: false,
                        publishers: [
                            sshPublisherDesc(
                                configName: 'target',
     //                             username: "vijay",
                                transfers2: [
                                    sshTransfer(
                                        sourceFiles: 'script2.sh',
                                        remoteDirectory: '/tmp/script2',
                                        execCommand: 'bash /tmp/script2/script2.sh && uname -n'
                                    )
                                ]
                            )
                        ]
                    )
           }
                // Third script
                      sleep 30
                            steps {
                    sshPublisher(
                        failOnError: true,
                        continueOnError: false,
                        publishers: [
                            sshPublisherDesc(
                                configName: 'target',
     //                             username: "vijay",
                                transfers3: [
                                    sshTransfer(
                                        sourceFiles: 'script3.sh',
                                        remoteDirectory: '/tmp/scroipt3',
                                        execCommand: 'bash /tmp/script3/script3.sh && uname -n'
                                    )
                                ]
                            )
                        ]
                    )
            }
                
        }
      }
}
