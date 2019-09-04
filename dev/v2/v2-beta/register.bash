sudo gitlab-runner register -n \
   --url https://gitlab.p2shop.cn:8443/ \
   --registration-token ****** \
   --tag-list "golang" \
   --executor docker \
   --description "229 p2shop golang" \
   --docker-image "docker:19.03.1" \
   --docker-privileged \
   --docker-volumes "/home/xiao.xinmiao/images/rtc:/builds/cache/rtc" \
   --docker-volumes "/home/xiao.xinmiao/images/golang-builder-beta/go:/builds/cache/go" \
   --docker-volumes "/home/xiao.xinmiao/images/swagger-ui:/builds/cache/swagger-ui" \
   --docker-volumes "/home/xiao.xinmiao/images/swagger-ui-3.19.3:/builds/cache/swagger-ui-3.19.3" \
   --env "DOCKER_AUTH_CONFIG={\"auths\": {\"registry.elandsystems.cn:5000\": {\"auth\": \"******\"},\"registry.p2shop.com.cn\": {\"auth\": \"******\"}}}" \
   --docker-dns  "8.8.8.8" \
   --cache-dir  "/builds/cache" \
   --docker-sysctls "net.ipv4.ip_forward:1" \
 


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

    