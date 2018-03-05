https://hub.docker.com/r/kinogmt/centos-ssh/

ssh root@localhost
root:password

https://wiki.jenkins.io/display/JENKINS/Installing+Jenkins+on+Red+Hat+distributions

#

https://hub.docker.com/r/stephenlu/centos-ssh-root/

#

sudo yum install git
sudo yum install java-1.8.0-openjdk
sudo yum install wget
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
sudo rpm --import http://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install jenkins

#

https://stackoverflow.com/questions/42289957/installing-jenkins-in-linux-import-read-failed-1

#####################################################################

vi /var/lib/jenkins/config.xml

#

service jenkins start
service jenkins stop
