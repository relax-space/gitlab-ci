

卸载

sudo gitlab-runner unregister --name="229 p2shop golang build" 
sudo gitlab-runner unregister --name="229 p2shop golang test" 

安装

# test

sudo gitlab-runner register -n \
   --url https://gitlab.p2shop.cn:8443/ \
   --registration-token ****** \
   --tag-list "golang-test" \
   --executor docker \
   --description "229 p2shop golang test" \
   --docker-image "docker:19.03.1" \
   --docker-privileged \
   --env "DOCKER_AUTH_CONFIG={\"auths\": {\"registry.elandsystems.cn:5000\": {\"auth\": \"******\"},\"registry.p2shop.com.cn\": {\"auth\": \"******\"}}}" \
   --custom_build_dir-enabled=true  \
   --docker-dns  "8.8.8.8" \
   --docker-wait-for-services-timeout="300"
   
# build

sudo gitlab-runner register -n \
   --url https://gitlab.p2shop.cn:8443/ \
   --registration-token ****** \
   --tag-list "golang-build" \
   --executor shell \
   --env "DOCKER_AUTH_CONFIG={\"auths\": {\"registry.elandsystems.cn:5000\": {\"auth\": \"******\"},\"registry.p2shop.com.cn\": {\"auth\": \"******\"}}}" \
   --custom_build_dir-enabled=true  \
   --description "229 p2shop golang build" \
   --docker-dns  "8.8.8.8" \
   --docker-wait-for-services-timeout="300"

    