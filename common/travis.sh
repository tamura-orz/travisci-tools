# S3 AccessKeyID
export REPO_USER=AKIAIS5CQUHDMFQW6VXA

# 開発用リポジトリ(参照)
export DEVELOP_REPO_URL=s3://tamutamu.test.s3
export DEVELOP_REPO_NAME=repo2

# 開発用リポジトリ(デプロイ)
export DEPLOY_HOST_URL=s3://tamutamu.test.s3
export DEPLOY_REPO_NAME=repo2

# *今だけ* gradleプラグインのインストール
git clone -b change-deploy-code https://github.com/tamura-orz/nablarch-gradle-plugin.git
pushd nablarch-gradle-plugin
chmod +x gradlew
./gradlew install
popd


# プルリク時はビルドのみ。マージ時はデプロイを行う。
if [ "$TRAVIS_PULL_REQUEST" == "true" ];then
  ./gradlew build -PuseRepoCredentials=true -PnablarchRepoUsername=${REPO_USER} \
                           -PnablarchRepoPassword=${DEPLOY_PASSWORD} -PnablarchRepoReferenceUrl=${DEVELOP_REPO_URL} \
                           -PnablarchRepoReferenceName=${DEVELOP_REPO_NAME} -PnablarchRepoDeployUrl=${DEPLOY_HOST_URL} \
                           -PnablarchRepoName=${DEPLOY_REPO_NAME} --no-daemon  
else
  ./gradlew uploadArchives -PuseRepoCredentials=true -PnablarchRepoUsername=${REPO_USER} \
                           -PnablarchRepoPassword=${DEPLOY_PASSWORD} -PnablarchRepoReferenceUrl=${DEVELOP_REPO_URL} \
                           -PnablarchRepoReferenceName=${DEVELOP_REPO_NAME} -PnablarchRepoDeployUrl=${DEPLOY_HOST_URL} \
                           -PnablarchRepoName=${DEPLOY_REPO_NAME} --no-daemon
fi
