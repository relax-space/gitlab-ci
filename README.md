注意：


提交代码之后，需要同步数据到srx  gitlab

git remote set-url --add origin ssh://git@gitlab.srxcloud.com:622/qa/gitlab-ci.git

git checkout qa
git pull upstream qa
git push origin qa -f 