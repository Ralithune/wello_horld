# wello_horld
A test repository to set up a "Hello world" webapp running in Docker inside an Ubuntu 16.04 Virtual Box managed with Vagrant version controlled with git.  Yo dawg, I heard you were cold and that you like software layers, so we put software layers in your software layers, so you can write layered software while you're wearing soft layers

Tested on CentOS 7.4 as root.
Prerequisites: git, virtualbox, vagrant

CentOS 7.4 - Install Virtualbox:
```
cd /etc/yum.repos.d/ 
wget http://download.virtualbox.org/virtualbox/rpm/rhel/virtualbox.repo
yum -y install VirtualBox-5.2
```

CentOS 7.4 - Install Vagrant:
```
cd
wget https://releases.hashicorp.com/vagrant/2.0.1/vagrant_2.0.1_x86_64.rpm
yum -y install vagrant_2.0.1_x86_64.rpm
```

Startup steps:
```
git clone https://github.com/Ralithune/wello_horld.git
cd wello_horld
vagrant up
wget -qO- 127.0.0.1:8080
```

Flask app logging will appear in "app.log", inside the wello_horld directory.
