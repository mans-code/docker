FROM ibmcom/db2:11.5.5.1

# Create app directory
RUN mkdir -p /var/custom

# set the work directory
WORKDIR /usr/src/app

# Copy initialization scripts from this dir to /var/custom
COPY . /var/custom

# Grant permissions for the import-data script to be executable
# RUN chmod +x import-data.sh