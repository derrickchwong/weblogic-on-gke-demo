#!/usr/bin/env bash

/tools/imagetool/bin/imagetool.sh cache addInstaller \
--type wdt \
--version latest \
--path /tools/weblogic-deploy.zip

zip -r archive.zip applications config

/tools/imagetool/bin/imagetool.sh update \
--tag us-central1-docker.pkg.dev/m2c-demo/container/weblogic-demo-app \
--fromImage us-central1-docker.pkg.dev/m2c-demo/container/weblogic:12.2.1.4  \
--wdtModel model.10.yaml \
--wdtVariables model.10.properties \
--wdtArchive archive.zip \
--wdtModelOnly \
--wdtDomainType WLS \
--chown oracle:root