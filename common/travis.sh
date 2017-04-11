export REPO_USER=AKIAIS5CQUHDMFQW6VXA

export DEVELOP_REPO_URL=http://tamutamu.test.s3.s3-website-ap-southeast-2.amazonaws.com
export DEVELOP_REPO_NAME=repository

export DEPLOY_HOST_URL=s3://tamutamu.test.s3
export DEPLOY_REPO_NAME=repo2

git clone -b change-deploy-code https://github.com/tamura-orz/nablarch-gradle-plugin.git
pushd nablarch-gradle-plugin
chmod +x gradlew
./gradlew install
popd
