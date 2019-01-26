# Use an official Python runtime as a parent image
FROM httpd:2.4

# Set the working directory to /app
#WORKDIR /app

# Copy the current directory contents into the container at /app
COPY ./public-html/ /usr/local/apache2/htdocs/

# Install any needed packages specified in requirements.txt
#RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
#ENV NAME World

# Run app.py when the container launches
#CMD ["python", "app.py"]

