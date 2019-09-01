



1.因为发现pangpanglabs/golang:builder-beta这一步特别消耗CPU，很慢
  方案：用golang1.12 + -v 代替 pangpanglabs/golang:builder-beta
2.并发最大值20

测试：
10个merge_requests  平均时间是