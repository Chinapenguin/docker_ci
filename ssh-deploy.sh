#!/bin/bash
###
 # @Author: panda.com
 # @Date: 2021-07-16 21:19:08
 # @LastEditors: panda.com
 # @LastEditTime: 2021-07-17 11:23:01
 # @FilePath: \docker_ci\ssh-deploy.sh
### 
ssh root@47.106.134.95 > /dev/null 2>&1 << eeooff
# 构建后端
cd /root/source/docker_ci
docker-compose

eeooff
echo done!


ssh root@47.106.134.95 "df -h"