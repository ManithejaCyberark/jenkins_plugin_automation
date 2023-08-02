//groovy script for freestyle project
freeStyleJob('freeStyleJob') {
  steps {
    shell('''
# Instructions for Conjur Cloud
CONJUR_ACCESS_TOKEN=$(curl --header "Accept-Encoding: base64" --data "$CLOUD_API_KEY" https://conjurcloudint.secretsmgr.cyberark.cloud/api/authn/conjur/host%2Fdata%2Fconjur-cloud-host1/authenticate)
SECRET_VAL=$(curl -H "Authorization: Token token=\\"$CONJUR_ACCESS_TOKEN\\"" https://conjurcloudint.secretsmgr.cyberark.cloud/api/secrets/conjur/variable/data/manual-test-cred-2)
echo $SECRET_VAL
    ''')
  }
triggers {
  cron('*/1 * * * *')
}
}
