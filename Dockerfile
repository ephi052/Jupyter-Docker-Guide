# Use a base image with Python and Jupyter pre-installed
FROM jupyter/base-notebook

# Set metadata indicating an image maintainer (you can update this)
LABEL maintainer="Your Name <your.email@example.com>"

# Copy your notebook files into the container's working directory
COPY ./notebooks /home/jovyan/notebooks

# Expose the Jupyter Notebook port
EXPOSE 8888

# Start the Jupyter Notebook server when the container runs
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
