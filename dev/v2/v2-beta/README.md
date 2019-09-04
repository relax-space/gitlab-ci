
v1:

1.因为发现pangpanglabs/golang:builder-beta这一步特别消耗CPU，很慢
  方案：用golang1.12 + -v 代替 pangpanglabs/golang:builder-beta
2.并发最大值20

v2-beta

1.rtc 也通过缓存的方式加载
2.并发最大值5

测试：
1个merge_requests   时间是3m
10个merge_requests  平均时间是
