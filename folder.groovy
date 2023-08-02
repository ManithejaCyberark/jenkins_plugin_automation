folder('Dev-Team-1') {
    // displayName('Dev-Team-1')
    description('Folder for Dev-Team')
}

freeStyleJob('Dev-Team-1/freestyle-project') {
    description('freestyle project')
}

pipelineJob('Dev-Team-1/test-pipeline') {
    description('test-pipeline project')
}
