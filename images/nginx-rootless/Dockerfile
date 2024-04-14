# Use the official NGINX non-root image
FROM nginxinc/nginx-unprivileged

# Expose port (default 8080 already exposed by base image)
EXPOSE 8080

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]