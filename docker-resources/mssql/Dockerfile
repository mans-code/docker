# please refer to https://www.softwaredeveloper.blog/initialize-mssql-in-docker-container
FROM mcr.microsoft.com/mssql/server:2017-latest

# Create app directory
RUN mkdir -p /usr/src/app

# set the work directory
WORKDIR /usr/src/app

# Copy initialization scripts from this dir to WORKDIR
COPY . .

# Grant permissions for the import-data script to be executable
RUN chmod +x import-data.sh

# Run Microsoft SQl Server and initialization script (at the same time)
CMD /bin/bash ./entrypoint.sh
