# Use the Python 3.9 container image
From python:3.9

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install the dependencies
RUN pip install -r requirements.txt
RUN apt-get update && apt-get install -y libgl1-mesa-glx
RUN apt-get install -y ffmpeg

# run the command to start uWSGI
CMD ["uwsgi", "uwsgi.ini"]
