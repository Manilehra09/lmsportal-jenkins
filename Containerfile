FROM docker.io/amazonlinux:latest

# Install Apache
RUN yum update -y && yum install httpd -y

# Copy the website code from the 'src' folder into the web directory
COPY ./src/ /var/www/html/

# Ensure the web server has permission to read the files
RUN chown -R apache:apache /var/www/html && chmod -R 755 /var/www/html

EXPOSE 80

# Run Apache in the foreground
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
