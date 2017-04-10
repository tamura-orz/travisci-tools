export REPO_USER=nablarch

export DEVELOP_REPO_URL=http://ec2-52-220-174-87.ap-southeast-1.compute.amazonaws.com/artifactory
export DEVELOP_REPO_NAME=libs-nablarch-local

export DEPLOY_HOST_URL=http://ec2-52-220-174-87.ap-southeast-1.compute.amazonaws.com/artifactory
export DEPLOY_REPO_NAME=libs-nablarch-local

export S3_BACKET_REPO_URL=s3://tamutamu.test.s3/repository

git clone -b change-deploy-code https://github.com/tamura-orz/nablarch-gradle-plugin.git
pushd nablarch-gradle-plugin
chmod +x gradlew
./gradlew install
popd
