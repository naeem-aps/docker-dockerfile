# use ubuntu as a base
FROM ubuntu:bionic

# adding maintainer
LABEL maintainer="naeem@appperfect.com" 

# Update the image and install nginx
RUN apt-get update && \
	apt-get install nginx -y

# Expose port 80 to communicate with ngnix
EXPOSE 80

# launch ngnix within the container
CMD ["nginx", "-g", "daemon off;"]


