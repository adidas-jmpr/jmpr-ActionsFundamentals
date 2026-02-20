FROM alpine:3.22

# Set the working directory inside the container
WORKDIR /usr/src

# Install curl for GitHub API validation
RUN apk add --no-cache curl

# Copy any source file(s) required for the action
COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

# Configure the container to be run as an executable
ENTRYPOINT ["/usr/src/entrypoint.sh"]