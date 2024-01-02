# Dockerfile to build a container image for the application
# The application consists of python, jupyterlab, and langchain

FROM python:3.12-bookworm

# Install the required packages
RUN pip install \
langchain \
jupyterlab \
openai \
docarray \
tiktoken 

# Make a directory for the application
RUN mkdir /app

# Volume for the application
VOLUME /app

# Set the working directory
WORKDIR /app

# Expose the port
EXPOSE 8192

# Run the application
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8192", "--no-browser", "--allow-root"]

# End of Dockerfile
