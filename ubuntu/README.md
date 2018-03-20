https://hub.docker.com/r/rastasheep/ubuntu-sshd/


ssh -p 222 root@localhost

root/root




apt-get install python-software-properties
apt-get install software-properties-common

add-apt-repository ppa:webupd8team/java
apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF

DISTRO=$(lsb_release -is | tr '[:upper:]' '[:lower:]')
CODENAME=$(lsb_release -cs)

echo "deb http://repos.mesosphere.io/${DISTRO} ${CODENAME} main" | tee -a /etc/apt/sources.list.d/mesosphere.list
apt-get update
apt-get install -y oracle-java8-installer && apt-get install oracle-java8-set-default





apt-get install -y zookeeper
echo test-master | tee /etc/zookeeper/conf/myid
echo 'server.1=mesos-master-1:2888:3888' | tee -a /etc/zookeeper/conf/zoo.cfg
echo 'server.2=mesos-master-2:2888:3888' | tee -a /etc/zookeeper/conf/zoo.cfg
echo 'server.3=mesos-master-3:2888:3888' | tee -a /etc/zookeeper/conf/zoo.cfg


apt-get -y install mesos
echo 'zk://mesos-master-1:2181,mesos-master-2:2181,mesos-master-3:2181/mesos' | tee /etc/mesos/zk     
echo 2 | tee /etc/mesos-master/quorum
echo $LOCAL_HOST | tee /etc/mesos-master/ip
echo $PUBLIC_HOST | tee /etc/mesos-master/hostname



apt-get -y install marathon
mkdir -p /etc/marathon/conf
cp /etc/mesos-master/hostname /etc/marathon/conf
cp /etc/mesos/zk /etc/marathon/conf/master
cp /etc/marathon/conf/master /etc/marathon/conf/zk
echo 'zk://mesos-master-1:2181,mesos-master-2:2181,mesos-master-3:2181/marathon' | tee /etc/marathon/conf/zk


