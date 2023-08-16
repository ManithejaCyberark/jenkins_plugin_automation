pipeline{
  agent {label 'agent1'}
  stages{
    stage("git clone"){
      steps{
        git branch: 'origin', url: 'https://github.com/ManithejaCyberark/jenkins_plugin_automation.git'
      }
    }
    stage("spin jenkins instance"){
      steps{
        sh './script.sh'
      }
    }
  }
}
