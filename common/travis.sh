export REPO_USER=AKIAIS5CQUHDMFQW6VXA

export DEVELOP_REPO_URL=s3://tamutamu.test.s3
export DEVELOP_REPO_NAME=repo2

export DEPLOY_HOST_URL=s3://tamutamu.test.s3
export DEPLOY_REPO_NAME=repo2

git clone -b change-deploy-code https://github.com/tamura-orz/nablarch-gradle-plugin.git
pushd nablarch-gradle-plugin
chmod +x gradlew
./gradlew install
popd
