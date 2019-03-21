FROM codercom/code-server

# Install docker & docker-compose
RUN apt-get update
RUN apt-get install -y docker.io
RUN apt install -y docker-compose

# Install node & npm
RUN apt-get install -y nodejs
RUN apt-get install -y npm

# Install shell tools
RUN apt-get -y install jq

# install some npm packages
RUN npm install -g yo
RUN npm install -g bower
RUN npm install -g ionic cordova
RUN npm install -g generator-m-ionic

# Install vscode extensions
# RUN code --user-data-dir /root  --install-extension vscode-javac
# RUN code --user-data-dir /root  --install-extension redhat.java
# RUN code --user-data-dir /root  --install-extension PeterJausovec.vscode-docker
# RUN code --user-data-dir /root  --install-extension tht13.python
# RUN code --user-data-dir /root  --install-extension secanis.jenkinsfile-support
# RUN code --user-data-dir /root  --install-extension wuwei.upload
# RUN code --user-data-dir /root  --install-extension vector-of-bool.gitflow
# RUN code --user-data-dir /root  --install-extension EditorConfig.EditorConfig