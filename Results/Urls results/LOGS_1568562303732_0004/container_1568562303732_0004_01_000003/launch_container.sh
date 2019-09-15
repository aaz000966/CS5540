#!/bin/bash

set -o pipefail -e
export PRELAUNCH_OUT="/home/zakari/hadoop-3.2.0/logs/userlogs/application_1568562303732_0004/container_1568562303732_0004_01_000003/prelaunch.out"
exec >"${PRELAUNCH_OUT}"
export PRELAUNCH_ERR="/home/zakari/hadoop-3.2.0/logs/userlogs/application_1568562303732_0004/container_1568562303732_0004_01_000003/prelaunch.err"
exec 2>"${PRELAUNCH_ERR}"
echo "Setting up env variables"
export JAVA_HOME=${JAVA_HOME:-"/usr/lib/jvm/java-1.8.0-openjdk-amd64"}
export HADOOP_COMMON_HOME=${HADOOP_COMMON_HOME:-"/home/zakari/hadoop-3.2.0"}
export HADOOP_HDFS_HOME=${HADOOP_HDFS_HOME:-"/home/zakari/hadoop-3.2.0"}
export HADOOP_CONF_DIR=${HADOOP_CONF_DIR:-"/home/zakari/hadoop-3.2.0/etc/hadoop"}
export HADOOP_YARN_HOME=${HADOOP_YARN_HOME:-"/home/zakari/hadoop-3.2.0"}
export HADOOP_MAPRED_HOME=${HADOOP_MAPRED_HOME:-"/home/zakari/hadoop-3.2.0"}
export HADOOP_TOKEN_FILE_LOCATION="/tmp/hadoop-zakari/nm-local-dir/usercache/zakari/appcache/application_1568562303732_0004/container_1568562303732_0004_01_000003/container_tokens"
export CONTAINER_ID="container_1568562303732_0004_01_000003"
export NM_PORT="36607"
export NM_HOST="zakari-VirtualBox"
export NM_HTTP_PORT="8042"
export LOCAL_DIRS="/tmp/hadoop-zakari/nm-local-dir/usercache/zakari/appcache/application_1568562303732_0004"
export LOCAL_USER_DIRS="/tmp/hadoop-zakari/nm-local-dir/usercache/zakari/"
export LOG_DIRS="/home/zakari/hadoop-3.2.0/logs/userlogs/application_1568562303732_0004/container_1568562303732_0004_01_000003"
export USER="zakari"
export LOGNAME="zakari"
export HOME="/home/"
export PWD="/tmp/hadoop-zakari/nm-local-dir/usercache/zakari/appcache/application_1568562303732_0004/container_1568562303732_0004_01_000003"
export JVM_PID="$$"
export MALLOC_ARENA_MAX="4"
export NM_AUX_SERVICE_mapreduce_shuffle="AAA0+gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA="
export STDOUT_LOGFILE_ENV="/home/zakari/hadoop-3.2.0/logs/userlogs/application_1568562303732_0004/container_1568562303732_0004_01_000003/stdout"
export SHELL="/bin/bash"
export HADOOP_ROOT_LOGGER="INFO,console"
export CLASSPATH="$PWD:$HADOOP_CONF_DIR:$HADOOP_COMMON_HOME/share/hadoop/common/*:$HADOOP_COMMON_HOME/share/hadoop/common/lib/*:$HADOOP_HDFS_HOME/share/hadoop/hdfs/*:$HADOOP_HDFS_HOME/share/hadoop/hdfs/lib/*:$HADOOP_YARN_HOME/share/hadoop/yarn/*:$HADOOP_YARN_HOME/share/hadoop/yarn/lib/*:$HADOOP_MAPRED_HOME/share/hadoop/mapreduce/*:$HADOOP_MAPRED_HOME/share/hadoop/mapreduce/lib/*:job.jar/*:job.jar/classes/:job.jar/lib/*:$PWD/*"
export LD_LIBRARY_PATH="$PWD:$HADOOP_COMMON_HOME/lib/native"
export STDERR_LOGFILE_ENV="/home/zakari/hadoop-3.2.0/logs/userlogs/application_1568562303732_0004/container_1568562303732_0004_01_000003/stderr"
export HADOOP_CLIENT_OPTS=""
echo "Setting up job resources"
ln -sf "/tmp/hadoop-zakari/nm-local-dir/usercache/zakari/appcache/application_1568562303732_0004/filecache/11/job.jar" "job.jar"
ln -sf "/tmp/hadoop-zakari/nm-local-dir/usercache/zakari/appcache/application_1568562303732_0004/filecache/13/job.xml" "job.xml"
echo "Copying debugging information"
# Creating copy of launch script
cp "launch_container.sh" "/home/zakari/hadoop-3.2.0/logs/userlogs/application_1568562303732_0004/container_1568562303732_0004_01_000003/launch_container.sh"
chmod 640 "/home/zakari/hadoop-3.2.0/logs/userlogs/application_1568562303732_0004/container_1568562303732_0004_01_000003/launch_container.sh"
# Determining directory contents
echo "ls -l:" 1>"/home/zakari/hadoop-3.2.0/logs/userlogs/application_1568562303732_0004/container_1568562303732_0004_01_000003/directory.info"
ls -l 1>>"/home/zakari/hadoop-3.2.0/logs/userlogs/application_1568562303732_0004/container_1568562303732_0004_01_000003/directory.info"
echo "find -L . -maxdepth 5 -ls:" 1>>"/home/zakari/hadoop-3.2.0/logs/userlogs/application_1568562303732_0004/container_1568562303732_0004_01_000003/directory.info"
find -L . -maxdepth 5 -ls 1>>"/home/zakari/hadoop-3.2.0/logs/userlogs/application_1568562303732_0004/container_1568562303732_0004_01_000003/directory.info"
echo "broken symlinks(find -L . -maxdepth 5 -type l -ls):" 1>>"/home/zakari/hadoop-3.2.0/logs/userlogs/application_1568562303732_0004/container_1568562303732_0004_01_000003/directory.info"
find -L . -maxdepth 5 -type l -ls 1>>"/home/zakari/hadoop-3.2.0/logs/userlogs/application_1568562303732_0004/container_1568562303732_0004_01_000003/directory.info"
echo "Launching container"
exec /bin/bash -c "$JAVA_HOME/bin/java -Djava.net.preferIPv4Stack=true -Dhadoop.metrics.log.level=WARN   -Xmx820m -Djava.io.tmpdir=$PWD/tmp -Dlog4j.configuration=container-log4j.properties -Dyarn.app.container.log.dir=/home/zakari/hadoop-3.2.0/logs/userlogs/application_1568562303732_0004/container_1568562303732_0004_01_000003 -Dyarn.app.container.log.filesize=0 -Dhadoop.root.logger=INFO,CLA -Dhadoop.root.logfile=syslog -Dyarn.app.mapreduce.shuffle.logger=INFO,shuffleCLA -Dyarn.app.mapreduce.shuffle.logfile=syslog.shuffle -Dyarn.app.mapreduce.shuffle.log.filesize=0 -Dyarn.app.mapreduce.shuffle.log.backups=0 org.apache.hadoop.mapred.YarnChild 127.0.1.1 42051 attempt_1568562303732_0004_r_000000_0 3 1>/home/zakari/hadoop-3.2.0/logs/userlogs/application_1568562303732_0004/container_1568562303732_0004_01_000003/stdout 2>/home/zakari/hadoop-3.2.0/logs/userlogs/application_1568562303732_0004/container_1568562303732_0004_01_000003/stderr "
