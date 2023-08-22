# Use a base image with Python and Jupyter pre-installed
FROM jupyter/base-notebook

# Copy your notebook files into the container
COPY ./notebooks /home/jovyan/work

# Expose the Jupyter Notebook port
EXPOSE 8888
