
v1:

1.因为发现pangpanglabs/golang:builder-beta这一步特别消耗CPU，很慢
  方案：用golang1.12 + -v 代替 pangpanglabs/golang:builder-beta
2.并发最大值20

v2-beta

1.rtc 也通过缓存的方式加载
2.并发最大值5

测试：
1个merge_requests   时间是3m
10个merge_requests  平均时间是14

v2
# 为了使单元测试更快速

- jenkins 通过Dockerfile build镜像

    ```yml
    FROM xxx-beta AS builder
    ...

    RUN go get github.com/kardianos/govendor && \
        govendor init && \
        govendor add +e
    # make application docker image use alpine
    FROM xxx/alpine-ssl
    WORKDIR /go/bin/
    COPY --from=builder /go/src/go-api-test1/vendor ./vendor
    ...

    ```

- 从 jenkins拉取项目的镜像，registry.xxx.cn/$CI_PROJECT_NAME-qa

- 从镜像中拷贝文件
  ```bash
    docker cp Project-Container:/go/bin/vendor  $pwd/go-pkg
  ```
- 执行go build && go test

    ``` bash
    docker run --rm  --network=host 
        -v $(pwd)/go-pkg:/go/src
        -v $(pwd):/go/src/$CI_PROJECT_NAME
        -w /go/src/$CI_PROJECT_NAME
        -e APP_ENV=
        -e JWT_SECRET=1234
        golang:1.12 
        sh -c '
        go get -v &&
        go build &&
        go test -p 1 -count 1 -v -coverpkg=./... -coverprofile coverage.out ./... &&
        go tool cover -func=coverage.out'

    ```



