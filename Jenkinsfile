node {
    def app

    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */

        checkout scm
    }

    stage('Build image') {
        /* This builds the actual image; synonymous to
         * docker build on the command line */

        app = docker.build("ratulbanerjee/djangoapp")
    }

  
    stage('Push image') {
        /* Finally, we'll push the image with two tags:
         * First, the incremental build number from Jenkins
         * Second, the 'latest' tag.
         * Pushing multiple tags is cheap, as all the layers are reused. */
  

   docker.withRegistry('https://649347328056.dkr.ecr.us-west-2.amazonaws.com/ratulbanerjee/djangoapp', 'ecr:us-west-2:demo-ecr-credentials') {
         docker.image('demo').push('latest')
   }
        }
    
}
