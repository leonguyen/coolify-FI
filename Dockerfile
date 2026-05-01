FROM docker:24-dind

# Install dependencies
RUN apk add --no-cache bash curl git openssh-client

# Install Coolify
RUN curl -fsSL https://cdn.coollabs.io/coolify/install.sh | bash

# Expose Coolify port
EXPOSE 3000

# Copy entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]