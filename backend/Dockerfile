# Use AlmaLinux base image
FROM almalinux:9

# Expose port 8080
EXPOSE 8080

ENV DB_HOST=mysql

# Create a user for running the app
RUN useradd expense

# Install Node.js 16, adjust if needed
# Install Node.js (including npm) on AlmaLinux
RUN dnf module install -y nodejs:16 
RUN dnf install -y gcc-c++ make

# Create the app directory and set ownership
RUN mkdir /opt/server && \
chown expense:expense -R /opt/server

# Set the working directory
WORKDIR /opt/server

# Switch to the expense user for the rest of the operations
USER expense

# Copy package.json and install dependencies
COPY package.json .
RUN npm install

# Copy all .js files to the working directory
COPY *.js ./

# Set the command to run the app
CMD ["node", "index.js"]