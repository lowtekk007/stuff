# DOCKER-VERSION 0.3.4
FROM centos6.6

#Enable EPEL for Node.js
Run rpm -Uvh http://download.fedoraproject.org/pub/epel-release-6-8.noarch.rpm
# Install Node.js and npm
Run yum install -y npm

# Bundle app source
ADD . /src
# Install app dependencies
RUN cd /src; npm install

Expose 8080
CMD ["node", */src/app.js"]
