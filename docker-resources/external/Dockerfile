#please refer to https://openliberty.io/docs/21.0.0.3/reference/config/server-configuration-overview.html
FROM openliberty/open-liberty:kernel-slim-java15-openj9-ubi

# assign openliberty config folder location to an arg
ARG CONFIG_FOLDER=../../pass-external-mock/build-resources/server

# assign openliberty config files location to an arg
ARG SERVER_CONFIG_FILES=$CONFIG_FOLDER/openliberty/usr/servers/pass-server

# assign the server-sample.xml location to an args
ARG SERVER_XML_FILE=$CONFIG_FOLDER/server-sample.xml

# copy server-sample.xml to config folder
COPY --chown=1001:0  $SERVER_XML_FILE /config/

# copy all config files to config folder
COPY --chown=1001:0  $SERVER_CONFIG_FILES /config/


# copy app war to openliberty server
COPY --chown=1001:0  Sample1.war /config/dropins/

# Rename server-sample.xml to server.xml
RUN 

# This script will add the requested server configurations, and
#       apply any interim fixes and populate caches to optimize runtime
RUN configure.sh