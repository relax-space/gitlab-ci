

1.有两个runner: golang-build 和 golang-test
2.golang-build: 运行pangpanglabs/golang:builder-beta镜像，获得本项目所需要的vendor文件，并上传
3.golang-test: 从vendor里下载文件,运行registry.elandsystems.cn:5000/golang:1.12-alpine镜像，并执行go test

good job



