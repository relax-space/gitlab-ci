

卸载

sudo gitlab-runner unregister --name="229 p2shop golang build" 
sudo gitlab-runner unregister --name="229 p2shop golang test" 

安装

# test

sudo gitlab-runner register -n \
   --url https://gitlab.p2shop.cn:8443/ \
   --registration-token ****** \
   --docker-extra-hosts "gitlab.p2shop.cn:10.202.101.22" \
   --tag-list "golang-test" \
   --executor docker \
   --description "229 p2shop golang test" \
   --docker-image "docker:19.03.1" \
   --docker-privileged \
   --env "DOCKER_AUTH_CONFIG={\"auths\": {\"registry.elandsystems.cn:5000\": {\"auth\": \"******\"},\"registry.p2shop.com.cn\": {\"auth\": \"******\"}}}" \
   --custom_build_dir-enabled=true  
 
   
# build

sudo gitlab-runner register -n \
   --url https://gitlab.p2shop.cn:8443/ \
   --registration-token ****** \
   --docker-extra-hosts "gitlab.p2shop.cn:10.202.101.22" \
   --description "229 p2shop golang build" \
   --tag-list "golang-build" \
   --executor shell \
   --env "DOCKER_AUTH_CONFIG={\"auths\": {\"registry.elandsystems.cn:5000\": {\"auth\": \"******\"},\"registry.p2shop.com.cn\": {\"auth\": \"******\"}}}" \
   --custom_build_dir-enabled=true  


# srx  ====


sudo gitlab-runner register -n \
   --url https://gitlab.srxcloud.com/ \
   --registration-token ****** \
   --tag-list "golang-test" \
   --executor docker \
   --description "229 srx golang test" \
   --docker-image "docker:19.03.1" \
   --docker-privileged \
   --env "DOCKER_AUTH_CONFIG={\"auths\": {\"registry.elandsystems.cn:5000\": {\"auth\": \"******\"},\"registry.p2shop.com.cn\": {\"auth\": \"******\"}}}" \
   --custom_build_dir-enabled=true  


sudo gitlab-runner register -n \
   --url https://gitlab.srxcloud.com/ \
   --registration-token ****** \
   --description "229 srx golang build" \
   --tag-list "golang-build" \
   --executor shell \
   --env "DOCKER_AUTH_CONFIG={\"auths\": {\"registry.elandsystems.cn:5000\": {\"auth\": \"******\"},\"registry.p2shop.com.cn\": {\"auth\": \"******\"}}}" \
   --custom_build_dir-enabled=true  


# example

sudo gitlab-runner register -n \
   --url http://gitlab.example.com:8929/ \
   --clone-url http://10.202.101.230:8929/ \
   --registration-token ****** \
   --tag-list "golang-test" \
   --executor docker \
   --description "229 example golang test" \
   --docker-image "docker:19.03.1" \
   --docker-privileged \
   --env "DOCKER_AUTH_CONFIG={\"auths\": {\"registry.elandsystems.cn:5000\": {\"auth\": \"******\"},\"registry.p2shop.com.cn\": {\"auth\": \"******\"}}}" \
   --custom_build_dir-enabled=true

sudo gitlab-runner register -n \
   --url http://gitlab.example.com:8929/ \
   --registration-token ****** \
   --description "229 example golang build" \
   --tag-list "golang-build" \
   --executor shell \
   --env "DOCKER_AUTH_CONFIG={\"auths\": {\"registry.elandsystems.cn:5000\": {\"auth\": \"******\"},\"registry.p2shop.com.cn\": {\"auth\": \"******\"}}}" \
   --custom_build_dir-enabled=true 


# docker download

sudo gitlab-runner register -n \
   --url https://gitlab.p2shop.cn:8443/ \
   --registration-token ****** \
   --tag-list "docker-download" \
   --executor shell \
   --description "229 docker-download" \
   --docker-image "docker:19.03.1" \
   --docker-privileged \
   --env "DOCKER_AUTH_CONFIG={\"auths\": {\"registry.elandsystems.cn:5000\": {\"auth\": \"******\"},\"registry.p2shop.com.cn\": {\"auth\": \"******\"}}}"
   

    