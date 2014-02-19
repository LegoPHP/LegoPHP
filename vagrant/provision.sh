#!/bin/bash

# Enable Debugging
set -x

# Add MongoDB Repo
echo -e "[mongodb]\nname=MongoDB Repository\nbaseurl=http://downloads-distro.mongodb.org/repo/redhat/os/x86_64/\ngpgcheck=0\nenabled=1" > /etc/yum.repos.d/mongodb.repo

# Don't Require TTY for Root
echo 'Defaults:root     !requiretty' >> /etc/sudoers

# Create Root Crontab
echo '@reboot /root/rclocal.sh' > /root/mycron
crontab /root/mycron
rm /root/mycron

# Create /root/rclocal.sh
echo -e '#!/bin/bash\n' > /root/rclocal.sh
echo -e 'sleep 30\n' >> /root/rclocal.sh

# Add additional IPs to rclocal.sh
echo -e "/sbin/ifconfig eth1:2 192.168.100.101 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:3 192.168.100.102 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:4 192.168.100.103 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:5 192.168.100.104 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:6 192.168.100.105 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:7 192.168.100.106 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:8 192.168.100.107 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:9 192.168.100.108 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:10 192.168.100.109 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:11 192.168.100.110 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:12 192.168.100.111 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:13 192.168.100.112 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:14 192.168.100.113 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:15 192.168.100.114 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:16 192.168.100.115 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:17 192.168.100.116 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:18 192.168.100.117 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:19 192.168.100.118 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:20 192.168.100.119 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:21 192.168.100.120 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:22 192.168.100.121 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:23 192.168.100.122 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:24 192.168.100.123 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:25 192.168.100.124 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:26 192.168.100.125 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:27 192.168.100.126 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:28 192.168.100.127 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:29 192.168.100.128 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:30 192.168.100.129 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:31 192.168.100.130 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:32 192.168.100.131 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:33 192.168.100.132 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:34 192.168.100.133 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:35 192.168.100.134 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:36 192.168.100.135 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:37 192.168.100.136 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:38 192.168.100.137 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:39 192.168.100.138 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:40 192.168.100.139 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:41 192.168.100.140 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:42 192.168.100.141 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:43 192.168.100.142 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:44 192.168.100.143 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:45 192.168.100.144 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:46 192.168.100.145 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:47 192.168.100.146 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:48 192.168.100.147 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:49 192.168.100.148 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:50 192.168.100.149 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:51 192.168.100.150 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:52 192.168.100.151 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:53 192.168.100.152 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:54 192.168.100.153 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:55 192.168.100.154 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:56 192.168.100.155 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:57 192.168.100.156 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:58 192.168.100.157 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:59 192.168.100.158 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:60 192.168.100.159 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:61 192.168.100.160 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:62 192.168.100.161 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:63 192.168.100.162 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:64 192.168.100.163 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:65 192.168.100.164 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:66 192.168.100.165 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:67 192.168.100.166 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:68 192.168.100.167 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:69 192.168.100.168 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:70 192.168.100.169 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:71 192.168.100.170 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:72 192.168.100.171 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:73 192.168.100.172 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:74 192.168.100.173 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:75 192.168.100.174 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:76 192.168.100.175 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:77 192.168.100.176 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:78 192.168.100.177 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:79 192.168.100.178 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:80 192.168.100.179 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:81 192.168.100.180 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:82 192.168.100.181 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:83 192.168.100.182 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:84 192.168.100.183 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:85 192.168.100.184 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:86 192.168.100.185 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:87 192.168.100.186 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:88 192.168.100.187 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:89 192.168.100.188 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:90 192.168.100.189 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:91 192.168.100.190 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:92 192.168.100.191 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:93 192.168.100.192 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:94 192.168.100.193 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:95 192.168.100.194 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:96 192.168.100.195 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:97 192.168.100.196 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:98 192.168.100.197 netmask 255.255.255.0 up\n/sbin/ifconfig eth1:99 192.168.100.198 netmask 255.255.255.0 up\n" >> /root/rclocal.sh

# Update CentOS
yum update -y

# Install Packages
yum install -y php-pecl-xdebug java-1.6.0-openjdk-devel telnet rubygems ruby-devel git mysql mysql-server httpd php php-cli php-mysql php-xml php-pecl-memcached php-mbstring php-mcrypt mlocate nano wget iptraf iftop memcached phpMyAdmin mod_ssl ImageMagick tetex-latex libgcj php-bcmath mod_status php-devel php-pear munin sinjdoc java-1.6.0-openjdk java-cup python-lxml mongo-10gen mongo-10gen-server libtool-ltdl-devel fftw3-devel djvulibre-devel OpenEXR-devel llibwebp4 bzip2-devel freetype-devel libjpeg-devel libpng-devel libtiff-devel giflib-devel zlib-devel perl-devel ghostscript-devel libwmf-devel jasper-devel libXt-devel lcms-devel libxml2-devel librsvg2-devel
pecl install mongo

yum remove -y ImageMagick

cd ~
mkdir imagick
cd imagick
wget http://www.imagemagick.org/download/linux/SRPMS/ImageMagick.src.rpm
rpmbuild --rebuild ImageMagick.src.rpm
cd /root/rpmbuild/RPMS/x86_64/
rpm -ivh ImageMagick*.x86_64.rpm
cd ~
rm -rf ~/imagick
rm -rf /root/rpmbuild

wget -O jenkins-1.551-1.1.noarch.rpm http://ftp-nyc.osuosl.org/pub/jenkins/redhat/jenkins-1.551-1.1.noarch.rpm
rpm -ivh jenkins-1.551-1.1.noarch.rpm
service jenkins start

sleep 30

wget http://localhost:8080/jnlpJars/jenkins-cli.jar

java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin http://ftp.oregonstate.edu/pub/jenkins/plugins/AdaptivePlugin/0.1/AdaptivePlugin.hpi
wget -O default.js http://updates.jenkins-ci.org/update-center.json
sed '1d;$d' default.js > default.json
curl -X POST -H "Accept: application/json" -d @default.json http://localhost:8080/updateCenter/byId/default/postBack --verbose

curl -sS https://getcomposer.org/installer | php

wget https://phar.phpunit.de/phpunit.phar
chmod +x phpunit.phar
mv phpunit.phar /usr/local/bin/phpunit

php composer.phar global require 'phpunit/phpunit=3.7.*'

pear install PHP_CodeSniffer

wget https://phar.phpunit.de/phploc.phar
chmod +x phploc.phar
mv phploc.phar /usr/local/bin/phploc

php composer.phar global require 'phploc/phploc=*'

pear channel-discover pear.pdepend.org
pear channel-discover pear.xplib.de
pear install --alldeps xplib/PHP_CodeSniffer_CommentParser2-0.1.5
pear install --alldeps xplib/PHP_CodeSniffer_Standards_Zeta-0.2.0
pear install --alldeps pdepend/PHP_CodeSniffer_Standards_PDepend2
pear install --alldeps pdepend/PHP_Depend

pear channel-discover pear.phpmd.org
pear install --alldeps phpmd/PHP_PMD

wget https://phar.phpunit.de/phpcpd.phar
chmod +x phpcpd.phar
mv phpcpd.phar /usr/local/bin/phpcpd

php composer.phar global require 'sebastian/phpcpd=*'

pear config-set auto_discover 1
pear install -f pear.netpirates.net/phpDox-0.5.0

java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin checkstyle cloverphp dry htmlpublisher jdepend plot pmd violations xunit
java -jar jenkins-cli.jar -s http://localhost:8080 safe-restart
java -jar jenkins-cli.jar -s http://localhost:8080 reload-configuration

sleep 30

curl https://raw.github.com/sebastianbergmann/php-jenkins-template/master/config.xml | \
     java -jar jenkins-cli.jar -s http://localhost:8080 create-job php-template

# Install Apache ANT
wget http://www.us.apache.org/dist/ant/binaries/apache-ant-1.9.3-bin.tar.gz
tar -xvf apache-ant-1.9.3-bin.tar.gz -C /opt
ln -s /opt/apache-ant-1.9.3 /opt/ant

# Configure Apache ANT
sh -c 'echo ANT_HOME=/opt/ant >> /etc/environment'
ln -s /opt/ant/bin/ant /usr/bin/ant

# Install SonarQube
wget -O /etc/yum.repos.d/sonar.repo http://downloads.sourceforge.net/project/sonar-pkg/rpm/sonar.repo
yum install -y

# Configure SonarQube
sed -i 's|sonar.jdbc.url=jdbc:h2:tcp://localhost:9092/sonar|#sonar.jdbc.url=jdbc:h2:tcp://localhost:9092/sonar|g' /opt/sonar/conf/sonar.properties
sed -i 's|#sonar.jdbc.url=jdbc:mysql|sonar.jdbc.url=jdbc:mysql|g' /opt/sonar/conf/sonar.properties

# Install SonarQube Runner
cd /opt
wget -O sonar-runner.zip http://repo1.maven.org/maven2/org/codehaus/sonar/runner/sonar-runner-dist/2.3/sonar-runner-dist-2.3.zip
unzip sonar-runner.zip
ln -s sonar-runner-2.3 sonar-runner
sed -i 's|#sonar.host.url|sonar.host.url|g' /opt/sonar-runner/conf/sonar-runner.properties
sed -i 's|#sonar.jdbc.url=jdbc:mysql|sonar.jdbc.url=jdbc:mysql|g' /opt/sonar-runner/conf/sonar-runner.properties
sed -i 's|#sonar.jdbc.username=sonar|sonar.jdbc.username=sonar|g' /opt/sonar-runner/conf/sonar-runner.properties
sed -i 's|#sonar.jdbc.password=sonar|sonar.jdbc.password=sonar|g' /opt/sonar-runner/conf/sonar-runner.properties
echo -e '#!/bin/bash\nexport SONAR_RUNNER_HOME=/opt/sonar-runner\nexport PATH=$PATH:$SONAR_RUNNER_HOME/bin' > /etc/profile.d/sonar-runner.sh

cd ~

# Make munin logs writable
chmod -R 777 /var/log/munin

# Install Clarity
gem install clarity

# Remove and Re-Install Clarity
rm -rf /usr/lib/ruby/gems/1.8/gems/clarity-0.9.8/*
cd /usr/lib/ruby/gems/1.8/gems/clarity-0.9.8/
git clone https://github.com/tobi/clarity.git .

# Add Clarity to rc.local
echo -e 'clarity --address=192.168.100.151 --port=80 --include="/opt/sonar/logs/sonar.log" --include="/var/log/*log" --include="/var/log/cron" --include="/var/log/*/*log" /var/log &\n' >> /root/rclocal.sh
echo -e '/etc/init.d/httpd restart\n' >> /root/rclocal.sh

# Modify httpd.conf
sed -i 's|AllowOverride None|AllowOverride All|g' /etc/httpd/conf/httpd.conf
sed -i 's|Require ip ::1||g' /etc/httpd/conf.d/phpMyAdmin.conf
sed -i 's|Allow from ::1||g' /etc/httpd/conf.d/phpMyAdmin.conf
sed -i 's|User apache|User vagrant|g' /etc/httpd/conf/httpd.conf
sed -i 's|Group apache|Group vagrant|g' /etc/httpd/conf/httpd.conf
sed -i 's|Listen 80||g' /etc/httpd/conf/httpd.conf
sed -i 's|Listen 443||g' /etc/httpd/conf.d/ssl.conf
echo "ExtendedStatus on" >> /etc/httpd/conf/httpd.conf
echo "ServerName 127.0.0.1:80" >> /etc/httpd/conf/httpd.conf
echo "EnableSendfile off" >> /etc/httpd/conf/httpd.conf
echo -e "Listen 192.168.100.101:80\nListen 192.168.100.101:443\nListen 192.168.100.102:80\nListen 192.168.100.102:443\nListen 192.168.100.103:80\nListen 192.168.100.103:443\nListen 192.168.100.104:80\nListen 192.168.100.104:443\nListen 192.168.100.105:80\nListen 192.168.100.105:443\nListen 192.168.100.106:80\nListen 192.168.100.106:443\nListen 192.168.100.107:80\nListen 192.168.100.107:443\nListen 192.168.100.108:80\nListen 192.168.100.108:443\nListen 192.168.100.109:80\nListen 192.168.100.109:443\nListen 192.168.100.110:80\nListen 192.168.100.110:443\nListen 192.168.100.111:80\nListen 192.168.100.111:443\nListen 192.168.100.112:80\nListen 192.168.100.112:443\nListen 192.168.100.113:80\nListen 192.168.100.113:443\nListen 192.168.100.114:80\nListen 192.168.100.114:443\nListen 192.168.100.115:80\nListen 192.168.100.115:443\nListen 192.168.100.116:80\nListen 192.168.100.116:443\nListen 192.168.100.117:80\nListen 192.168.100.117:443\nListen 192.168.100.118:80\nListen 192.168.100.118:443\nListen 192.168.100.119:80\nListen 192.168.100.119:443\nListen 192.168.100.120:80\nListen 192.168.100.120:443\nListen 192.168.100.121:80\nListen 192.168.100.121:443\nListen 192.168.100.122:80\nListen 192.168.100.122:443\nListen 192.168.100.123:80\nListen 192.168.100.123:443\nListen 192.168.100.124:80\nListen 192.168.100.124:443\nListen 192.168.100.125:80\nListen 192.168.100.125:443\nListen 192.168.100.126:80\nListen 192.168.100.126:443\nListen 192.168.100.127:80\nListen 192.168.100.127:443\nListen 192.168.100.128:80\nListen 192.168.100.128:443\nListen 192.168.100.129:80\nListen 192.168.100.129:443\nListen 192.168.100.130:80\nListen 192.168.100.130:443\nListen 192.168.100.131:80\nListen 192.168.100.131:443\nListen 192.168.100.132:80\nListen 192.168.100.132:443\nListen 192.168.100.133:80\nListen 192.168.100.133:443\nListen 192.168.100.134:80\nListen 192.168.100.134:443\nListen 192.168.100.135:80\nListen 192.168.100.135:443\nListen 192.168.100.136:80\nListen 192.168.100.136:443\nListen 192.168.100.137:80\nListen 192.168.100.137:443\nListen 192.168.100.138:80\nListen 192.168.100.138:443\nListen 192.168.100.139:80\nListen 192.168.100.139:443\nListen 192.168.100.140:80\nListen 192.168.100.140:443\nListen 192.168.100.141:80\nListen 192.168.100.141:443\nListen 192.168.100.142:80\nListen 192.168.100.142:443\nListen 192.168.100.143:80\nListen 192.168.100.143:443\nListen 192.168.100.144:80\nListen 192.168.100.144:443\nListen 192.168.100.145:80\nListen 192.168.100.145:443\nListen 192.168.100.146:80\nListen 192.168.100.146:443\nListen 192.168.100.147:80\nListen 192.168.100.147:443\nListen 192.168.100.148:80\nListen 192.168.100.148:443\nListen 192.168.100.149:80\nListen 192.168.100.149:443\nListen 192.168.100.150:80\nListen 192.168.100.150:443\nListen 192.168.100.152:80\nListen 192.168.100.152:443\nListen 192.168.100.153:80\nListen 192.168.100.153:443\nListen 192.168.100.154:80\nListen 192.168.100.154:443\nListen 192.168.100.155:80\nListen 192.168.100.155:443\nListen 192.168.100.156:80\nListen 192.168.100.156:443\nListen 192.168.100.157:80\nListen 192.168.100.157:443\nListen 192.168.100.158:80\nListen 192.168.100.158:443\nListen 192.168.100.159:80\nListen 192.168.100.159:443\nListen 192.168.100.160:80\nListen 192.168.100.160:443\nListen 192.168.100.161:80\nListen 192.168.100.161:443\nListen 192.168.100.162:80\nListen 192.168.100.162:443\nListen 192.168.100.163:80\nListen 192.168.100.163:443\nListen 192.168.100.164:80\nListen 192.168.100.164:443\nListen 192.168.100.165:80\nListen 192.168.100.165:443\nListen 192.168.100.166:80\nListen 192.168.100.166:443\nListen 192.168.100.167:80\nListen 192.168.100.167:443\nListen 192.168.100.168:80\nListen 192.168.100.168:443\nListen 192.168.100.169:80\nListen 192.168.100.169:443\nListen 192.168.100.170:80\nListen 192.168.100.170:443\nListen 192.168.100.171:80\nListen 192.168.100.171:443\nListen 192.168.100.172:80\nListen 192.168.100.172:443\nListen 192.168.100.173:80\nListen 192.168.100.173:443\nListen 192.168.100.174:80\nListen 192.168.100.174:443\nListen 192.168.100.175:80\nListen 192.168.100.175:443\nListen 192.168.100.176:80\nListen 192.168.100.176:443\nListen 192.168.100.177:80\nListen 192.168.100.177:443\nListen 192.168.100.178:80\nListen 192.168.100.178:443\nListen 192.168.100.179:80\nListen 192.168.100.179:443\nListen 192.168.100.180:80\nListen 192.168.100.180:443\nListen 192.168.100.181:80\nListen 192.168.100.181:443\nListen 192.168.100.182:80\nListen 192.168.100.182:443\nListen 192.168.100.183:80\nListen 192.168.100.183:443\nListen 192.168.100.184:80\nListen 192.168.100.184:443\nListen 192.168.100.185:80\nListen 192.168.100.185:443\nListen 192.168.100.186:80\nListen 192.168.100.186:443\nListen 192.168.100.187:80\nListen 192.168.100.187:443\nListen 192.168.100.188:80\nListen 192.168.100.188:443\nListen 192.168.100.189:80\nListen 192.168.100.189:443\nListen 192.168.100.190:80\nListen 192.168.100.190:443\nListen 192.168.100.191:80\nListen 192.168.100.191:443\nListen 192.168.100.192:80\nListen 192.168.100.192:443\nListen 192.168.100.193:80\nListen 192.168.100.193:443\nListen 192.168.100.194:80\nListen 192.168.100.194:443\nListen 192.168.100.195:80\nListen 192.168.100.195:443\nListen 192.168.100.196:80\nListen 192.168.100.196:443\nListen 192.168.100.197:80\nListen 192.168.100.197:443\nListen 192.168.100.198:80\nListen 192.168.100.198:443\n" >> /etc/httpd/conf/httpd.conf

# Modify phpMyAdmin Config
sed -i 's|FALSE;       // default unless you|TRUE; //|g' /etc/phpMyAdmin/config.inc.php

# Modify httpd/conf.d/phpMyAdmin.conf
bash -c 'echo "Alias /phpMyAdmin /usr/share/phpMyAdmin" > /etc/httpd/conf.d/phpMyAdmin.conf'
bash -c 'echo "Alias /phpmyadmin /usr/share/phpMyAdmin" >> /etc/httpd/conf.d/phpMyAdmin.conf'

# Remove welcome.conf
rm -rf /etc/httpd/conf.d/welcome.conf

# Add GVS conf.d file
bash -c 'echo "Include /legophp/conf.d/vagrant/*.conf" > /etc/httpd/conf.d/legophp.conf'

# Enable PHP Short Tags
bash -c 'echo "short_open_tag=On" >> /etc/php.ini'
bash -c 'echo "[xdebug]" >> /etc/php.ini'
bash -c 'echo "zend_extension=\"/usr/lib64/php/modules/xdebug.so\"" >> /etc/php.ini'
bash -c 'echo "xdebug.remote_enable = 1" >> /etc/php.ini'
bash -c 'echo "extension=mongo.so" >> /etc/php.ini'

# Install git-flow
echo "source /usr/local/gitflow/git-flow-completion.bash" >> /etc/bashrc
cd /usr/local/
git clone https://github.com/nvie/gitflow.git
cd gitflow
git submodule init
git submodule update
git clone http://github.com/nvie/shFlags.git
cd ../
wget --no-check-certificate -q -O - https://raw.github.com/nvie/gitflow/develop/contrib/gitflow-installer.sh | sudo bash
git clone https://github.com/bobthecow/git-flow-completion.git
mv git-flow-completion/git-flow-completion.bash /usr/local/gitflow/

echo -e "Host github.com\n\tStrictHostKeyChecking no\n" >> /home/vagrant/.ssh/config
echo -e "Host bitbucket.org\n\tStrictHostKeyChecking no\n" >> /home/vagrant/.ssh/config

chown -R vagrant:vagrant /home/vagrant/.ssh
chmod -R 700 /home/vagrant/.ssh

# Enable the LegoPHP sub toolbox
bash -c 'echo eval "$(/legophp/scripts/bin/lego init -)" >> /etc/bashrc'

# Ensure /gvs is owned by vagrant
chown -R vagrant:vagrant /legophp

# Install Munin Plugins
ln -s /usr/share/munin/plugins/apache_* /etc/munin/plugins/
sudo ln -s /usr/share/munin/plugins/apache_* /etc/munin/plugins/
sudo ln -s /usr/share/munin/plugins/mysql_* /etc/munin/plugins/
sudo ln -s /usr/share/munin/plugins/diskstats /etc/munin/plugins/
sudo ln -s /usr/share/munin/plugins/vserver* /etc/munin/plugins/
wget -O munin-plugins.tar.gz wget http://github.com/erh/mongo-munin/tarball/master
wget -O munin-plugins.tar.gz http://github.com/erh/mongo-munin/tarball/master
tar -zxvf munin-plugins.tar.gz
sudo mv erh-mongo-munin-08e7aeb/mongo_* /etc/munin/plugins/
sudo /etc/init.d/munin-node restart
sudo updatedb

# Make sure mysqld, memcached, and httpd start on boot
chkconfig httpd on
chkconfig mysqld on
chkconfig memcached on
chkconfig mongod on
chkconfig munin-node on
chkconfig jenkins on
chkconfig sonar on

# Start above three services
/etc/init.d/httpd restart
/etc/init.d/memcached restart
/etc/init.d/mysqld restart
/etc/init.d/mongod restart
/etc/init.d/munin-node restart
service sonar start

# Add IPs and Restart Apache, and Start Clarity on first boot
/root/rclocal.sh

# Import LegoPHP Schemas
SCHEMAS=/legophp/schemas/*
for f in $SCHEMAS
do
    echo "Importing Schema " $f
    mysql -u root < $f
done

# Import Plugin Schemas
find /legophp/* -name '*.sql' | awk '{ print "source",$0 }' | mysql --batch
