# Use the Debezium Connect image as the base image
FROM debezium/connect:latest

# Update package lists and install PostgreSQL client
USER root
RUN apt-get update && apt-get install -y postgresql-client

# Switch back to the non-root user provided by the base image
USER kafka