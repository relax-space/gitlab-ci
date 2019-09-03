test 1

sudo gitlab-runner register -n \
   --url https://gitlab.p2shop.cn:8443/ \
   --registration-token ****** \
   --tag-list "golang" \
   --executor docker \
   --description "229 p2shop golang" \
   --docker-image "docker:19.03.1" \
   --docker-privileged \
   --docker-volumes "/home/xiao.xinmiao/images/rtc:/builds/cache/rtc" \
   --env "DOCKER_AUTH_CONFIG={\"auths\": {\"registry.elandsystems.cn:5000\": {\"auth\": \"******\"},\"registry.p2shop.com.cn\": {\"auth\": \"******\"}}}" \
   --docker-dns  "8.8.8.8" \
   --cache-dir  "/builds/cache" \
   --docker-sysctls "net.ipv4.ip_forward:1" \
   --custom_build_dir-enabled=true \
   --docker-disable-cache=true

   test 2

   sudo gitlab-runner register -n \
   --url https://gitlab.p2shop.cn:8443/ \
   --registration-token ****** \
   --tag-list "golang" \
   --executor docker \
   --description "229 p2shop golang" \
   --docker-image "docker:19.03.1" \
   --docker-privileged \
   --docker-volumes "/home/xiao.xinmiao/images/rtc:/builds/cache/rtc" \
   --env "DOCKER_AUTH_CONFIG={\"auths\": {\"registry.elandsystems.cn:5000\": {\"auth\": \"******\"},\"registry.p2shop.com.cn\": {\"auth\": \"******\"}}}" \
   --docker-dns  "8.8.8.8" \
   --cache-dir  "/builds/cache" \
   --docker-sysctls "net.ipv4.ip_forward:1" \
   --custom_build_dir-enabled=true 


  test 3

   sudo gitlab-runner register -n \
   --url https://gitlab.p2shop.cn:8443/ \
   --registration-token ****** \
   --tag-list "golang" \
   --executor docker \
   --description "229 p2shop golang" \
   --docker-image "docker:19.03.1" \
   --docker-privileged \
   --docker-volumes "/home/xiao.xinmiao/images/rtc:/builds/cache/rtc" \
   --env "DOCKER_AUTH_CONFIG={\"auths\": {\"registry.elandsystems.cn:5000\": {\"auth\": \"******\"},\"registry.p2shop.com.cn\": {\"auth\": \"******\"}}}" \
   --docker-dns  "8.8.8.8" \
   --cache-dir  "/builds/cache" \
   --docker-sysctls "net.ipv4.ip_forward:1" \
   --custom_build_dir-enabled=true \
   --docker-cpus  0.5 \
   --docker-memory  "128m" \
   --docker-memory-swap  "256m" 

test 4

   sudo gitlab-runner register -n \
   --url https://gitlab.p2shop.cn:8443/ \
   --registration-token ****** \
   --tag-list "golang" \
   --executor docker \
   --description "229 p2shop golang" \
   --docker-image "docker:19.03.1" \
   --docker-privileged \
   --docker-volumes "/home/xiao.xinmiao/images/rtc:/builds/cache/rtc" \
   --env "DOCKER_AUTH_CONFIG={\"auths\": {\"registry.elandsystems.cn:5000\": {\"auth\": \"******\"},\"registry.p2shop.com.cn\": {\"auth\": \"******\"}}}" \
   --docker-dns  "8.8.8.8" \
   --cache-dir  "/builds/cache" \
   --docker-sysctls "net.ipv4.ip_forward:1" \
   --custom_build_dir-enabled=true \
   --docker-cpus  0.5 \
   --docker-memory  "256m" \
   --docker-memory-swap  "512m" 

test 5

   sudo gitlab-runner register -n \
   --url https://gitlab.p2shop.cn:8443/ \
   --registration-token ****** \
   --tag-list "golang" \
   --executor docker \
   --description "229 p2shop golang" \
   --docker-image "docker:19.03.1" \
   --docker-privileged \
   --docker-volumes "/home/xiao.xinmiao/images/rtc:/builds/cache/rtc" \
   --env "DOCKER_AUTH_CONFIG={\"auths\": {\"registry.elandsystems.cn:5000\": {\"auth\": \"******\"},\"registry.p2shop.com.cn\": {\"auth\": \"******\"}}}" \
   --cache-dir  "/builds/cache" \
   --custom_build_dir-enabled=true \
   --docker-cpus  0.5 \
   --docker-memory  "256m" \
   --docker-memory-swap  "512m" 


test 6

   sudo gitlab-runner register -n \
   --url https://gitlab.p2shop.cn:8443/ \
   --registration-token ****** \
   --tag-list "golang" \
   --executor docker \
   --description "229 p2shop golang" \
   --docker-image "docker:19.03.1" \
   --docker-privileged \
   --docker-volumes "/home/xiao.xinmiao/images/rtc:/builds/cache/rtc" \
   --env "DOCKER_AUTH_CONFIG={\"auths\": {\"registry.elandsystems.cn:5000\": {\"auth\": \"******\"},\"registry.p2shop.com.cn\": {\"auth\": \"******\"}}}" \
   --cache-dir  "/builds/cache" \
   --custom_build_dir-enabled=true \
   --docker-cpus  0.5 \
   --docker-memory  "256m" \
   --docker-memory-swap  "512m" 


test 7

   sudo gitlab-runner register -n \
   --url https://gitlab.p2shop.cn:8443/ \
   --registration-token ****** \
   --tag-list "golang" \
   --executor docker \
   --description "229 p2shop golang" \
   --docker-image "docker:19.03.1" \
   --docker-privileged \
   --docker-volumes "/home/xiao.xinmiao/images/rtc:/builds/cache/rtc" \
   --env "DOCKER_AUTH_CONFIG={\"auths\": {\"registry.elandsystems.cn:5000\": {\"auth\": \"******\"},\"registry.p2shop.com.cn\": {\"auth\": \"******\"}}}" \
   --cache-dir  "/builds/cache" \
   --custom_build_dir-enabled=true \
   --docker-cpus  0.5 \
   --docker-memory  "256m" \
   --docker-memory-swap  "512m" \
   --docker-oom-kill-disable=true


test 8

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
   --docker-cpus "3.8"

test 9

   sudo gitlab-runner register -n \
   --url https://gitlab.p2shop.cn:8443/ \
   --registration-token ****** \
   --tag-list "golang-test" \
   --executor docker \
   --description "229 p2shop golang test" \
   --docker-image "docker:19.03.1" \
   --docker-privileged \
   --env "DOCKER_AUTH_CONFIG={\"auths\": {\"registry.elandsystems.cn:5000\": {\"auth\": \"******\"},\"registry.p2shop.com.cn\": {\"auth\": \"******\"}}}" \
   --custom_build_dir-enabled=true  
   

   
sudo gitlab-runner register -n \
   --url https://gitlab.p2shop.cn:8443/ \
   --registration-token ****** \
   --tag-list "golang-build" \
   --executor shell \
   --limit "1" \
   --env "DOCKER_AUTH_CONFIG={\"auths\": {\"registry.elandsystems.cn:5000\": {\"auth\": \"******\"},\"registry.p2shop.com.cn\": {\"auth\": \"******\"}}}" \
   --custom_build_dir-enabled=true  \
   --description "229 p2shop golang build"


   


