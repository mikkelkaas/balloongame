# Use nginx to serve the static HTML game
FROM nginx:alpine

# Copy the game files to nginx html directory
COPY index.html /usr/share/nginx/html/
COPY *.png /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
