# please refer to https://www.softwaredeveloper.blog/initialize-mssql-in-docker-container
FROM mcr.microsoft.com/mssql/server:2017-latest

# Create app directory argument
ARG APP_DIR=/usr/src/app

# Create app directory
RUN mkdir -p $APP_DIR

# set the work directory
WORKDIR $APP_DIR

# Copy initialization scripts from this dir to WORKDIR
COPY . .

# Grant permissions for the import-data script to be executable
RUN chmod +x import-data.sh

# Run Microsoft SQl Server and initialization script (at the same time)
CMD /bin/bash ./entrypoint.sh
