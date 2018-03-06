https://hub.docker.com/r/kinogmt/centos-ssh/

ssh root@localhost
root:root

https://wiki.jenkins.io/display/JENKINS/Installing+Jenkins+on+Red+Hat+distributions

#

https://hub.docker.com/r/stephenlu/centos-ssh-root/

#

temp java home
export JAVA_HOME=/usr/lib/jvm/jre-1.8.0-openjdk-1.8.0.161-0.b14.el7_4.x86_64

#

sudo yum install git
sudo yum install java-1.8.0-openjdk
sudo yum install wget
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
sudo rpm --import http://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install jenkins
sudo yum install -y initscripts

#

https://www.vultr.com/docs/how-to-install-gradle-on-centos-7

yum install -y unzip
wget https://services.gradle.org/distributions/gradle-3.4.1-bin.zip
sudo unzip -d /opt/gradle gradle-3.4.1-bin.zip
export PATH=$PATH:/opt/gradle/gradle-3.4.1/bin
gradle -v

#

vi ~/.bash_profile
export JAVA_HOME=/usr/lib/jvm/jre-1.8.0-openjdk-1.8.0.161-0.b14.el7_4.x86_64
PATH=$PATH:$HOME/bin

#

https://stackoverflow.com/questions/42289957/installing-jenkins-in-linux-import-read-failed-1

#####################################################################

vi /var/lib/jenkins/config.xml

#

service jenkins start
service jenkins stop
