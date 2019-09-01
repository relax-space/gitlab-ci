

卸载

sudo gitlab-runner unregister --name="229 p2shop golang" 

安装

sudo gitlab-runner register -n \
   --url https://gitlab.p2shop.cn:8443/ \
   --registration-token ****** \
   --tag-list "golang" \
   --executor docker \
   --description "229 p2shop golang" \
   --docker-image "docker:19.03.1" \
   --docker-privileged \
   --custom_build_dir-enabled=true \
   --env "DOCKER_AUTH_CONFIG={\"auths\": {\"registry.elandsystems.cn:5000\": {\"auth\": \"******\"},\"registry.p2shop.com.cn\": {\"auth\": \"******\"}}}" \
   --docker-cpus  1 \
   --docker-memory  "256m" \
   --docker-memory-swap  "512m" 


备用

   --docker-volumes "/home/xiao.xinmiao/images/golang-builder-beta/go:/builds/cache/go" \
   --docker-volumes "/home/xiao.xinmiao/images/swagger-ui:/builds/cache/swagger-ui" \
   --docker-volumes "/home/xiao.xinmiao/images/swagger-ui-3.19.3:/builds/cache/swagger-ui-3.19.3" \
   --docker-services "registry.elandsystems.cn:5000/docker:19.03.1-dind" \
   --docker-services "registry.elandsystems.cn:5000/compose:1.24.1" \
   --docker-oom-kill-disable=true \
   --docker-tmpfs "/builds/cache:rw,noexec"
   --docker-cpus  0.5 \
   --docker-memory  "128m" \
   --docker-memory-swap  "256m" \
   --limit "10" \
   --request-concurrency "1" \
   --docker-memory-reservation  "64m" \
   --docker-services "registry.elandsystems.cn:5000/mysql:5.7.22" \
   --docker-services "registry.elandsystems.cn:5000/golang:builder-beta" \
   --docker-services "registry.elandsystems.cn:5000/golang:1.12" \
   --docker-services "registry.p2shop.com.cn/run-test-container-qa"

    