FROM openjdk:8
RUN apt update 
RUN apt install -y zip unzip curl
RUN curl -m 120 -fL https://github.com/oracle/weblogic-deploy-tooling/releases/latest/download/weblogic-deploy.zip -o /app/weblogic-deploy.zip
RUN curl -m 120 -fL https://github.com/oracle/weblogic-image-tool/releases/latest/download/imagetool.zip -o /app/imagetool.zip
RUN unzip /app/imagetool.zip