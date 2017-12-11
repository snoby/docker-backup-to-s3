#!/bin/bash
set -xe

JENKINS_BUILD_NUM="${BUILD_NUMBER:-latest}"

docker build -t "iotapi322/backup-2-s3:$JENKINS_BUILD_NUM" .

#
# before running this part of the script you must login to dockerhub
#
#docker push "iotapi322/backup-2-s3:$JENKINS_BUILD_NUM"
