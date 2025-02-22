# **Containerized ROS Noetic Development Environment**  

This repository provides a **Dockerized ROS Noetic** environment for streamlined development and deployment. It includes a preconfigured workspace, essential dependencies, and SSH access for remote development.  

## **Features**  
✅ **ROS Noetic Desktop-Full** installed for a complete robotics development setup.  
✅ **Persistent workspace** (`ros_ws`) to maintain projects across container restarts.  
✅ **Host networking** for seamless integration with the host system.  
✅ **X11 forwarding** support for running GUI applications inside the container.  
✅ **SSH access** for remote connectivity and development.  

## **Usage**  
Clone the repository and build the container:  
```bash
git clone <repo-url>
cd <repo-name>
docker-compose up -d
```
To access the container:  
```bash
docker exec -it ros_noetic_container bash
```

## **Customization**  
Modify the `Dockerfile` and `docker-compose.yml` to add additional dependencies or configurations as needed.  

---
