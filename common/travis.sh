export REPO_USER=nablarch

export DEVELOP_REPO_URL=http://ec2-52-220-174-87.ap-southeast-1.compute.amazonaws.com/artifactory
export DEVELOP_REPO_NAME=libs-nablarch-local

export DEPLOY_HOST_URL=http://ec2-52-220-174-87.ap-southeast-1.compute.amazonaws.com/artifactory
export DEPLOY_REPO_NAME=libs-nablarch-local

export S3_BUCKET_REPO_URL=http://tamutamu.test.s3.s3-website-ap-southeast-2.amazonaws.com

git clone -b change-deploy-code https://github.com/tamura-orz/nablarch-gradle-plugin.git
pushd nablarch-gradle-plugin
chmod +x gradlew
./gradlew install
popd
