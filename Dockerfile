FROM nginx:Alpine

COPY index.html /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]