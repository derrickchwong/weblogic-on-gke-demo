FROM openjdk:8
RUN apt update 
RUN apt install -y zip unzip curl docker.io
RUN mkdir /tools
RUN curl -m 120 -fL https://github.com/oracle/weblogic-deploy-tooling/releases/latest/download/weblogic-deploy.zip -o /tools/weblogic-deploy.zip
RUN curl -m 120 -fL https://github.com/oracle/weblogic-image-tool/releases/latest/download/imagetool.zip -o /tools/imagetool.zip
RUN unzip /tools/imagetool.zip -d /tools 
