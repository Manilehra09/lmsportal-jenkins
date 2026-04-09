# Student LMS Portal Deployment

This project uses **Jenkins** and **Podman** to automatically deploy a student portal to a web server.

### Setup Instructions
1. Install Podman on your server: `sudo yum install podman -y`
2. Add Jenkins to sudoers: `jenkins ALL=(ALL) NOPASSWD: /usr/bin/podman`
3. Create a Jenkins Pipeline job pointing to this repository.
4. Click **Build Now**.

**Live URL:** `http://your-server-ip:8003`
