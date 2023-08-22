# Running Jupyter Notebook as a Docker Container

This guide explains how to run a Jupyter Notebook as a Docker container. Docker allows you to package an application and its dependencies into a single container, making it easy to deploy and run across different environments.

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/) installed on your system.
- Basic understanding of Docker and the command line.

## Step-by-Step Guide

### 1. Create a Dockerfile

Create a file named `Dockerfile` (no file extension) in your project directory with the following content:

```Dockerfile
# Use a base image with Python and Jupyter pre-installed
FROM jupyter/base-notebook

# Copy your notebook files into the container
COPY ./notebooks /home/jovyan/work

# Expose the Jupyter Notebook port
EXPOSE 8888
```

### 2. Create a Notebooks Directory

Create a directory named `notebooks` in the same location as your `Dockerfile`. Place your Jupyter Notebook files (`.ipynb`) into this directory.

### 3. Build the Docker Image

Open a terminal in the same directory as your `Dockerfile` and run the following command to build the Docker image:

```bash
docker build -t jupyter-container .
```

### 4. Run the Container

After the image is built, run the container using the following command:

```bash
docker run -p 8888:8888 jupyter-container
```

This command maps port 8888 from the container to port 8888 on your host machine.

### 5. Access the Jupyter Notebook

Open a web browser and navigate to the URL provided in the terminal output. You should be able to access and use your Jupyter Notebook within the container.

## Important Notes

- When you stop the container, any changes you made within the notebook will be lost unless you've saved those changes to the notebooks directory on your host machine.
- This guide provides a basic example to get you started. There are various options and configurations you can use to customize your Docker setup.

## Conclusion

Running a Jupyter Notebook as a Docker container is a convenient way to isolate your notebook environment and make it easily deployable. By following the steps outlined in this guide, you can quickly set up and run your Jupyter Notebooks within a Docker container.
