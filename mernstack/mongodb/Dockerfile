# Base Image
FROM mongo:latest

# ENV
ENV MONGO_INITDB_ROOT_USERNAME admin
ENV MONGO_INITDB_ROOT_PASSWORD 1234
ENV MONGO_INITDB_DATABASE products

# Add file
ADD ./sql/products.js /docker-entrypoint-initdb.d